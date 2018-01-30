/**
 * \file Ifx_Shell.h
 * \brief Shell functions.
 * \ingroup library_srvsw_sysse_comm_shell
 *
 * \version iLLD_1_0_0_11_0
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 * \defgroup library_srvsw_sysse_comm_shell Shell
 * This module implements the Shell functions.
 * \ingroup library_srvsw_sysse_comm
 *
 */

#ifndef IFX_SHELL_H
#define IFX_SHELL_H                   1
//----------------------------------------------------------------------------------------
#include "StdIf/IfxStdIf_DPipe.h"
//----------------------------------------------------------------------------------------
#define IFX_SHELL_NULL_CHAR           '\0'

#define IFX_SHELL_CMD_HISTORY_SIZE    (10)  /**<\brief Number of commands to store in history */
#define IFX_SHELL_CMD_LINE_SIZE       (128) /**<\brief max command line IFX_SHELL_CMD_LINE_SIZE - 1 */

#ifndef IFX_SHELL_COMMAND_LISTS
#define IFX_SHELL_COMMAND_LISTS       (1)   /**<\brief Number of command lists */
#endif

#ifndef IFX_SHELL_PROMPT
#define IFX_SHELL_PROMPT              "Shell>" /**<\brief Shell prompt */
#endif

/** \brief Marker for end of command list */
#define IFX_SHELL_COMMAND_LIST_END    {0, 0, 0, 0}

/** \brief Marker for end of syntax list */
#define IFX_SHELL_SYNTAX_LIST_END     {0, 0}

/** \brief Signifies no item in use in command history list */
#define IFX_SHELL_CMD_HISTORY_NO_ITEM (-1)
//----------------------------------------------------------------------------------------
/** \brief Result code definition used after each executed Shell command */
typedef enum
{
    Ifx_Shell_ResultCode_unknown = (128),
    Ifx_Shell_ResultCode_nok = (129),
    Ifx_Shell_ResultCode_undefined = (130),
    Ifx_Shell_ResultCode_ok = (255)
} Ifx_Shell_ResultCode;

/** \brief Definition of a callback function which handles a Shell command */
typedef boolean (*Ifx_Shell_Call) (pchar args, void *data, IfxStdIf_DPipe * io);

/** \brief Shell command object */
typedef struct
{
    pchar commandLine;
    pchar help;
    void *data;
    Ifx_Shell_Call call;
} Ifx_Shell_Command;

/** \brief Command line editing state */
typedef struct
{
    char *cmdStr;                   /**< \brief Pointer to current string containing command line as so far processed                                    */
    Ifx_SizeT cursor;               /**< \brief Pointer to variable containing position of cursor in so-far-processed command line                       */
    Ifx_SizeT length;               /**< \brief Pointer to variable containing total length of command line                                              */
    boolean historyAdd;             /**< \brief If TRUE, when Enter is pressed, the current cmdLine should be added to the command history (in parent)   */
    Ifx_SizeT historyItem;          /**< \brief Item ID in command history list, or IFX_SHELL_CMD_HISTORY_NO_ITEM if not using list (e.g. new command)       */
} Ifx_Shell_CmdLine;

/** \brief Shell command processing state */
typedef enum
{
    IFX_SHELL_CMD_STATE_NORMAL,                 /**< \brief Normal - no special sequences being processed */
    IFX_SHELL_CMD_STATE_ESCAPE,                 /**< \brief Escape character has been pressed */
    IFX_SHELL_CMD_STATE_ESCAPE_BRACKET,         /**< \brief ESC [ pressed */
    IFX_SHELL_CMD_STATE_ESCAPE_BRACKET_NUMBER   /**< \brief ESC [ (number) pressed */
} Ifx_Shell_CmdState;

/** \brief Shell protocol configuration */
typedef struct
{
    boolean (*start) (void *protocol, IfxStdIf_DPipe * io);
    void (*execute) (void *protocol);
    void (*onStart) (void *protocol, void *data);
    void *onStartData;
    void *object;
    boolean started;
} Ifx_Shell_Protocol;

/** \brief Shell control flags */
typedef struct
{
    uint16 showPrompt:1;
    uint16 enabled:1;
    uint16 sendResultCode:1;
    uint16 echo:1;
    uint16 echoError:1;
} Ifx_Shell_Flags;

/** \brief internal Shell run-time data */
typedef struct
{
    char echo[2];
    char inputbuffer[IFX_SHELL_CMD_LINE_SIZE + 1];
    char cmdStr[IFX_SHELL_CMD_LINE_SIZE];
    Ifx_Shell_CmdState cmdState;
    char escBracketNum;
} Ifx_Shell_Runtime;

/**
 * \brief Shell object definition
 */
typedef struct
{
    IfxStdIf_DPipe *io;             /**< \brief Pointer to IfxStdIf_DPipe object used by the Shell */

    Ifx_Shell_Flags control;        /**< \brief control flags */

    /** \brief Array of pointers to the history entries */
    char *cmdHistory[IFX_SHELL_CMD_HISTORY_SIZE];

    /** \brief Current status of command line editing (saves passing many parameters around) */
    Ifx_Shell_CmdLine cmd;

    Ifx_Shell_Runtime locals;       /**< \brief Runtime data */

    /** \brief Array of pointers to command list. The pointed location shall be constant
    * during Shell lifetime, e.g. stored in non-volatile memory or as global variable */
    const Ifx_Shell_Command *commandList[IFX_SHELL_COMMAND_LISTS];

    Ifx_Shell_Protocol protocol;       /**< \brief Protocol handler data */
} Ifx_Shell;

/**
 * \brief Shell configuration.
 */
typedef struct
{
    IfxStdIf_DPipe *standardIo;                                    /**<\brief Pointer to a IfxStdIf_DPipe object used by the Shell */
    boolean echo;                                                  /**<\brief Specifies whether each command shall be echoed back to user */
    boolean showPrompt;                                            /**<\brief Specifies whether the IFX_SHELL_PROMPT shall be displayed after each command */
    boolean sendResultCode;                                        /**<\brief Specifies whether the Ifx_Shell_ResultCode shall be sent to user */
    const Ifx_Shell_Command *commandList[IFX_SHELL_COMMAND_LISTS]; /**< \brief Specifies pointer to the command list */
    Ifx_Shell_Protocol protocol;                                   /**<\brief Configuration for the Ifx_Shell_Protocol */
} Ifx_Shell_Config;

typedef struct
{
    pchar syntax;
    pchar description;
} Ifx_Shell_Syntax;

//----------------------------------------------------------------------------------------
/** \addtogroup library_srvsw_sysse_comm_shell
 * \{ */

/** \name Basic functionality
 * \{ */

/** Set the config default parameter
 *
 * \param config Pointer to the configuration structure to be initialized
 */
void Ifx_Shell_initConfig (Ifx_Shell_Config * config);

/**
 * \brief Initialize the shell
 * \param shell Pointer to the \ref Ifx_Shell object
 * \param config Pointer to the configuration structure
 */
IFX_EXTERN boolean Ifx_Shell_init (Ifx_Shell * shell, const Ifx_Shell_Config * config);

/**
 * \brief Deinitialise the shell
 * \param shell Pointer to the \ref Ifx_Shell object
 */
IFX_EXTERN void Ifx_Shell_deinit (Ifx_Shell * shell);

/**
 * \brief Clear the receive buffer and enable the shell
 * \param shell Pointer to the \ref Ifx_Shell object
 */
IFX_EXTERN void Ifx_Shell_enable (Ifx_Shell * shell);

/**
 * \brief Disable the shell
 * \param shell Pointer to the \ref Ifx_Shell object
 */
IFX_EXTERN void Ifx_Shell_disable (Ifx_Shell * shell);

/**
 * \brief Process the shell.
 *
 * This function shall be called within a loop or periodic timer to guarantee the correct
 * processing of the incoming/received data.
 *
 * \param shell Pointer to the \ref Ifx_Shell object
 */
IFX_EXTERN void Ifx_Shell_process (Ifx_Shell * shell);

/** \} */
//----------------------------------------------------------------------------------------
/** \name Parsing functions
 * \{ */

/**
 * \brief Within the context of Shell.call, skip the whitespaces of the args string.
 * \param args Pointer to the original string
 * \return Pointer to the string after skipping the whitespaces
 */
IFX_EXTERN pchar Ifx_Shell_skipWhitespace (pchar args);

/**
 * \brief Match string pointed by the *argsPtr with a given token
 * \param argsPtr Pointer to the argument null-terminated string
 * \param token Pointer to the token string to match
 * \retval TRUE if the given token match with the string pointed by argsPtr
 */
IFX_EXTERN boolean Ifx_Shell_matchToken (pchar * argsPtr, pchar token);

/**
 * \brief Parse a token
 * \param argsPtr Pointer to the argument null-terminated string
 * \param tokenBuffer Pointer to the value storage
 * \param bufferLength Maximum parsing length
 */
IFX_EXTERN boolean Ifx_Shell_parseToken (pchar * argsPtr, char *tokenBuffer, int bufferLength);

/**
 * \brief Parse an address
 * \param argsPtr Pointer to the argument null-terminated string
 * \param address Pointer to the value storage
 */
IFX_EXTERN boolean Ifx_Shell_parseAddress (pchar * argsPtr, void **address);

/**
 * \brief Parse a signed 32-bit integer value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 */
IFX_EXTERN boolean Ifx_Shell_parseSInt32 (pchar * argsPtr, sint32 * value);

/**
 * \brief Parse an unsigned 32-bit integer value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 * \param hex if TRUE, hex parsing will be done, else decimal parsing
 */
IFX_EXTERN boolean Ifx_Shell_parseUInt32 (pchar * argsPtr, uint32 * value, boolean hex);

/**
 * \brief Parse a signed 64-bit integer value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 */
IFX_EXTERN boolean Ifx_Shell_parseSInt64 (pchar * argsPtr, sint64 * value);

/**
 * \brief Parse an unsigned 64-bit integer value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 * \param hex if TRUE, hex parsing will be done, else decimal parsing
 */
IFX_EXTERN boolean Ifx_Shell_parseUInt64 (pchar * argsPtr, uint64 * value, boolean hex);

/**
 * \brief Parse a 64-bit (double precision) floating-point value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 */
IFX_EXTERN boolean Ifx_Shell_parseFloat64 (pchar * argsPtr, float64 * value);

/**
 * \brief Parse a 32-bit (single precision) floating-point value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 */
IFX_EXTERN boolean Ifx_Shell_parseFloat32 (pchar * argsPtr, float32 * value);

/** \} */
//----------------------------------------------------------------------------------------
/** \name Command list functions
 * \{ */

/**
 * \brief Find command in commandList
 * \param commandList Pointer to the first entry of an array of \ref Ifx_Shell_Command
 * \param commandLine Pointer to null-terminated string containings the command to search.
 * \param args Pointer to the argument null-terminated string
 */
IFX_EXTERN const Ifx_Shell_Command *Ifx_Shell_commandFind (const Ifx_Shell_Command * commandList, pchar commandLine,
                                                           pchar * args);

/**
 * \brief Implementation of \ref Ifx_Shell_Call. Show the help menu from single command list.
 * \param prefix Prefix for each command in the commandList
 * \param commandList Pointer to an array of Ifx_Shell_Command
 * \param io Pointer to the IfxStdIf_DPipe object
 */
IFX_EXTERN boolean Ifx_Shell_showHelpSingle (pchar prefix, const void *commandList, IfxStdIf_DPipe * io);

/**
 * \brief Implementation of \ref Ifx_Shell_Call. Show the help menu and list of commands.
 * \param args The argument null-terminated string
 * \param shellPtr Pointer to a Shell object
 * \param io Pointer to \ref IfxStdIf_DPipe object
 */
IFX_EXTERN boolean Ifx_Shell_showHelp (pchar args, void *shellPtr, IfxStdIf_DPipe * io);

IFX_EXTERN void Ifx_Shell_printSyntax (const Ifx_Shell_Syntax * syntaxList, IfxStdIf_DPipe * io);

/** \} */
//----------------------------------------------------------------------------------------
/** \name Sub protocol functions
 * \{ */

/**
 * \brief Implementation of \ref Ifx_Shell_Call. Start the \ref ShellBb protocol.
 * \param args The argument null-terminated string
 * \param data Pointer to \ref Ifx_Shell object
 * \param io Pointer to \ref IfxStdIf_DPipe object
 */
IFX_EXTERN boolean Ifx_Shell_protocolStart (pchar args, void *data, IfxStdIf_DPipe * io);

/**
 * \brief Implementation of \ref Ifx_Shell_Call. Start the \ref ShellBb protocol.
 * \param args The argument null-terminated string
 * \param data Pointer to \ref Ifx_Shell object
 * \param io Pointer to \ref IfxStdIf_DPipe object
 */
IFX_EXTERN boolean Ifx_Shell_bbProtocolStart (pchar args, void *data, IfxStdIf_DPipe * io);

/** \} */
//----------------------------------------------------------------------------------------
/** \} */

#endif
