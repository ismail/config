from IPython.terminal.prompts import Prompts, Token

class CustomPrompt(Prompts):

    def in_prompt_tokens(self, cli=None):
        return [(Token.Prompt, '❯❯❯ '), ]

    def out_prompt_tokens(self, cli=None):
        return [(Token.Prompt, ''), ]

    def continuation_prompt_tokens(self, cli=None, width=None):
        return [(Token.Prompt, ''), ]

c = get_config()

c.TerminalInteractiveShell.prompts_class = CustomPrompt
c.TerminalInteractiveShell.separate_in = ''
c.TerminalInteractiveShell.confirm_exit = False
c.TerminalIPythonApp.display_banner = False
