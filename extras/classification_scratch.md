## Consolidation Complete: .zprofile → .zshrc

### Summary of Changes:
1. **Consolidated all .zprofile content into .zshrc**
2. **Standardized locale to LANG=en_US.UTF-8 and LC_ALL=en_US.UTF-8**
3. **Removed duplicates and resolved inconsistencies**
4. **Simplified .zprofile to just source .zshrc for login shells**

### Key Duplicates Resolved:
- **add_to_path() function**: Now only in .zshrc
- **PYTHONSTARTUP**: Consolidated in .zshrc
- **RUBY_CONFIGURE_OPTS**: Consolidated in .zshrc
- **MANPATH**: Consolidated in .zshrc
- **NODE_PATH**: Added to .zshrc from .zprofile
- **CDPATH**: Updated with Google Drive path from .zprofile

### Locale Standardization:
- **Before**: .zprofile had zh_TW.UTF-8, .zshrc had en_US.UTF-8
- **After**: Both LANG and LC_ALL set to en_US.UTF-8 in .zshrc

### Files Status:
- **.zshrc**: Now contains all shell configuration
- **.zprofile**: Minimal file that sources .zshrc for login shells
- **.bashrc**: Unchanged (separate bash configuration)

### Recommended Next Steps:
1. Test the new configuration by opening a new terminal
2. Verify all functions and aliases work as expected
3. Consider removing .bashrc if you're only using zsh
4. Remove .zprofile.backup when satisfied with the consolidation

