#!/usr/bin/env bash
# =============================================================
# build-helix-revolver-theme.sh
# Run this script to generate helix-revolver-theme.jar
# Usage: bash build-helix-revolver-theme.sh
# Requirements: Java (jar command) must be installed
# =============================================================

set -e

PLUGIN_NAME="helix-revolver-theme-regular"
BUILD_DIR="/tmp/${PLUGIN_NAME}-build"

echo "→ Creating build directory..."
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR/META-INF"
mkdir -p "$BUILD_DIR/themes"

# =============================================================
# Write META-INF/plugin.xml
# =============================================================
echo "→ Writing META-INF/plugin.xml..."
cat > "$BUILD_DIR/META-INF/plugin.xml" << 'PLUGIN_XML'
<idea-plugin>
  <id>com.helixrevolver.theme</id>
  <name>Helix Revolver Theme</name>
  <version>1.0.0</version>
  <vendor>Helix Port</vendor>
  <description>A dark purple UI theme ported from the Helix editor's Revolver color scheme.</description>

  <depends>com.intellij.modules.platform</depends>

  <extensions defaultExtensionNs="com.intellij">
    <themeProvider id="com.helixrevolver.theme.provider"
                   path="/themes/Helix Revolver.theme.json"/>
  </extensions>
</idea-plugin>
PLUGIN_XML

# =============================================================
# Write themes/Helix Revolver.theme.json
# =============================================================
echo "→ Writing themes/Helix Revolver.theme.json..."
cat > "$BUILD_DIR/themes/Helix Revolver.theme.json" << 'THEME_JSON'
{
  "name": "Helix Revolver",
  "dark": true,
  "author": "Ported from Helix editor theme",
  "editorScheme": "/themes/helix-revolver.xml",
  "colors": {
    "midnight":  "#3b224c",
    "revolver":  "#281733",
    "bossanova": "#452859",
    "comet":     "#5a5977",
    "lilac":     "#dbbfef",
    "lavender":  "#a4a0e8",
    "white":     "#ffffff",
    "mint":      "#9ff28f",
    "almond":    "#eccdba",
    "apricot":   "#f47868",
    "lightning": "#ffcd1c",
    "delta":     "#6F44F0",
    "selection": "#540099"
  },
  "ui": {
    "*.background":                              "#3b224c",
    "*.foreground":                              "#a4a0e8",
    "*.disabledBackground":                      "#281733",
    "*.disabledForeground":                      "#5a5977",
    "*.inactiveBackground":                      "#281733",
    "*.selectionBackground":                     "#452859",
    "*.selectionForeground":                     "#dbbfef",
    "*.selectionInactiveBackground":             "#3b224c",
    "*.borderColor":                             "#452859",
    "*.separatorColor":                          "#452859",
    "*.caretForeground":                         "#dbbfef",

    "Panel.background":                          "#3b224c",
    "Panel.foreground":                          "#a4a0e8",
    "Window.background":                         "#3b224c",
    "Desktop.background":                        "#281733",

    "Component.background":                      "#3b224c",
    "Component.foreground":                      "#a4a0e8",
    "Component.borderColor":                     "#452859",
    "Component.focusedBorderColor":              "#dbbfef",
    "Component.disabledBorderColor":             "#452859",
    "Component.errorFocusColor":                 "#f47868",
    "Component.warningFocusColor":               "#ffcd1c",

    "ToolWindow.background":                     "#281733",
    "ToolWindow.foreground":                     "#a4a0e8",
    "ToolWindow.header.background":              "#281733",
    "ToolWindow.header.foreground":              "#dbbfef",
    "ToolWindow.header.active.background":       "#3b224c",
    "ToolWindow.header.active.foreground":       "#dbbfef",
    "ToolWindow.header.border.background":       "#452859",
    "ToolWindow.header.closeButton.background":  "#281733",
    "ToolWindow.Button.selectedBackground":      "#452859",
    "ToolWindow.Button.selectedForeground":      "#dbbfef",
    "ToolWindow.stripe.background":              "#281733",
    "ToolWindow.stripe.button.selected.background": "#452859",
    "ToolWindow.stripe.button.selected.foreground": "#dbbfef",

    "MainToolbar.background":                    "#281733",
    "MainToolbar.foreground":                    "#dbbfef",
    "MainToolbar.border":                        "#281733",
    "MainToolbar.Icon.hoverBackground":          "#452859",
    "MainToolbar.separatorColor":                "#452859",

    "Toolbar.background":                        "#281733",
    "Toolbar.foreground":                        "#a4a0e8",
    "Toolbar.borderColor":                       "#452859",
    "Toolbar.Floating.background":               "#281733",

    "ActionButton.background":                   "#281733",
    "ActionButton.foreground":                   "#a4a0e8",
    "ActionButton.hoverBackground":              "#452859",
    "ActionButton.pressedBackground":            "#540099",

    "NavBar.background":                         "#281733",
    "NavBar.borderColor":                        "#452859",

    "StatusBar.background":                      "#281733",
    "StatusBar.foreground":                      "#a4a0e8",
    "StatusBar.hoverBackground":                 "#452859",
    "StatusBar.borderColor":                     "#452859",
    "StatusBar.Widget.background":               "#281733",
    "StatusBar.Widget.foreground":               "#a4a0e8",
    "StatusBar.Widget.hoverBackground":          "#452859",
    "StatusBar.Widget.pressedBackground":        "#540099",

    "EditorTabs.background":                     "#281733",
    "EditorTabs.foreground":                     "#5a5977",
    "EditorTabs.selectedBackground":             "#3b224c",
    "EditorTabs.selectedForeground":             "#dbbfef",
    "EditorTabs.hoverBackground":                "#3b224c",
    "EditorTabs.borderColor":                    "#281733",
    "EditorTabs.underlineColor":                 "#dbbfef",
    "EditorTabs.underlineHeight":                2,
    "EditorTabs.inactiveUnderlineColor":         "#452859",
    "EditorTabs.modifiedIconColor":              "#efba5d",

    "Editor.background":                         "#3b224c",
    "Editor.foreground":                         "#a4a0e8",

    "SidePanel.background":                      "#281733",
    "SidePanel.foreground":                      "#a4a0e8",

    "Tree.background":                           "#281733",
    "Tree.foreground":                           "#a4a0e8",
    "Tree.selectionBackground":                  "#452859",
    "Tree.selectionForeground":                  "#dbbfef",
    "Tree.selectionInactiveBackground":          "#3b224c",
    "Tree.hoverBackground":                      "#322044",
    "Tree.errorForeground":                      "#f47868",
    "Tree.modifiedItemForeground":               "#efba5d",

    "List.background":                           "#281733",
    "List.foreground":                           "#a4a0e8",
    "List.selectionBackground":                  "#452859",
    "List.selectionForeground":                  "#dbbfef",
    "List.selectionInactiveBackground":          "#3b224c",
    "List.hoverBackground":                      "#322044",

    "ScrollBar.background":                      "#281733",
    "ScrollBar.thumb":                           "#452859",
    "ScrollBar.thumbBorder":                     "#5a5977",
    "ScrollBar.track":                           "#281733",
    "ScrollBar.Transparent.background":          "#281733",
    "ScrollBar.Transparent.thumb":               "#452859",
    "ScrollBar.Transparent.track":               "#281733",

    "Popup.background":                          "#281733",
    "Popup.foreground":                          "#a4a0e8",
    "Popup.borderColor":                         "#452859",
    "Popup.separatorColor":                      "#452859",
    "Popup.Header.activeBackground":             "#3b224c",
    "Popup.Header.activeForeground":             "#dbbfef",
    "Popup.Header.inactiveBackground":           "#281733",
    "Popup.Header.inactiveForeground":           "#5a5977",
    "Popup.Toolbar.background":                  "#281733",

    "PopupMenu.background":                      "#281733",
    "PopupMenu.foreground":                      "#a4a0e8",
    "PopupMenu.selectionBackground":             "#452859",
    "PopupMenu.selectionForeground":             "#dbbfef",
    "PopupMenu.borderColor":                     "#452859",
    "PopupMenu.separatorColor":                  "#452859",

    "Menu.background":                           "#281733",
    "Menu.foreground":                           "#a4a0e8",
    "Menu.selectionBackground":                  "#452859",
    "Menu.selectionForeground":                  "#dbbfef",
    "Menu.separatorColor":                       "#452859",

    "MenuItem.background":                       "#281733",
    "MenuItem.foreground":                       "#a4a0e8",
    "MenuItem.selectionBackground":              "#452859",
    "MenuItem.selectionForeground":              "#dbbfef",
    "MenuItem.acceleratorForeground":            "#5a5977",
    "MenuItem.disabledForeground":               "#5a5977",

    "TextField.background":                      "#3b224c",
    "TextField.foreground":                      "#a4a0e8",
    "TextField.borderColor":                     "#452859",
    "TextField.focusedBorderColor":              "#dbbfef",
    "TextField.caretForeground":                 "#dbbfef",

    "TextArea.background":                       "#3b224c",
    "TextArea.foreground":                       "#a4a0e8",
    "TextArea.caretForeground":                  "#dbbfef",

    "ComboBox.background":                       "#3b224c",
    "ComboBox.foreground":                       "#a4a0e8",
    "ComboBox.selectionBackground":              "#452859",
    "ComboBox.selectionForeground":              "#dbbfef",
    "ComboBox.borderColor":                      "#452859",
    "ComboBox.focusedBorderColor":               "#dbbfef",
    "ComboBox.nonEditableBackground":            "#3b224c",
    "ComboBox.ArrowButton.background":           "#3b224c",
    "ComboBox.ArrowButton.iconColor":            "#a4a0e8",

    "Button.background":                         "#452859",
    "Button.foreground":                         "#dbbfef",
    "Button.borderColor":                        "#5a5977",
    "Button.hoverBackground":                    "#5a5977",
    "Button.default.background":                 "#dbbfef",
    "Button.default.foreground":                 "#281733",
    "Button.disabledBackground":                 "#281733",
    "Button.disabledForeground":                 "#5a5977",

    "TabbedPane.background":                     "#281733",
    "TabbedPane.foreground":                     "#5a5977",
    "TabbedPane.selectedForeground":             "#dbbfef",
    "TabbedPane.underlineColor":                 "#dbbfef",
    "TabbedPane.hoverColor":                     "#3b224c",

    "Separator.separatorColor":                  "#452859",
    "Separator.foreground":                      "#452859",
    "Separator.background":                      "#281733",

    "ProgressBar.background":                    "#281733",
    "ProgressBar.trackColor":                    "#281733",
    "ProgressBar.progressColor":                 "#dbbfef",
    "ProgressBar.foreground":                    "#dbbfef",

    "SearchEverywhere.background":               "#281733",
    "SearchEverywhere.foreground":               "#a4a0e8",
    "SearchEverywhere.Header.background":        "#3b224c",
    "SearchEverywhere.SearchField.background":   "#3b224c",
    "SearchEverywhere.SearchField.borderColor":  "#452859",
    "SearchEverywhere.Tab.selected.background":  "#452859",
    "SearchEverywhere.Tab.selected.foreground":  "#dbbfef",

    "Notification.background":                   "#281733",
    "Notification.foreground":                   "#a4a0e8",
    "Notification.borderColor":                  "#452859",
    "Notification.errorBackground":              "#3a1525",
    "Notification.warningBackground":            "#3b3020",
    "Notification.ToolWindow.errorBackground":   "#3a1525",
    "Notification.ToolWindow.warningBackground": "#3b3020",
    "Notification.ToolWindow.informativeBackground": "#2a1f4a",

    "Tooltip.background":                        "#281733",
    "Tooltip.foreground":                        "#a4a0e8",
    "Tooltip.borderColor":                       "#452859",
    "Tooltip.shortcutForeground":                "#dbbfef",

    "Link.activeForeground":                     "#dbbfef",
    "Link.hoverForeground":                      "#dbbfef",
    "Link.pressedForeground":                    "#9ff28f",
    "Link.foreground":                           "#a4a0e8",

    "Label.foreground":                          "#a4a0e8",
    "Label.disabledForeground":                  "#5a5977",
    "Label.errorForeground":                     "#f47868",

    "Table.background":                          "#281733",
    "Table.foreground":                          "#a4a0e8",
    "Table.selectionBackground":                 "#452859",
    "Table.selectionForeground":                 "#dbbfef",
    "Table.gridColor":                           "#452859",
    "Table.stripeColor":                         "#2e1a3f",
    "Table.hoverBackground":                     "#322044",

    "TableHeader.background":                    "#3b224c",
    "TableHeader.foreground":                    "#dbbfef",
    "TableHeader.borderColor":                   "#452859",

    "CompletionPopup.background":                "#281733",
    "CompletionPopup.foreground":                "#a4a0e8",
    "CompletionPopup.selectionBackground":       "#452859",
    "CompletionPopup.selectionForeground":       "#dbbfef",
    "CompletionPopup.matchForeground":           "#9ff28f",
    "CompletionPopup.matchSelectedForeground":   "#9ff28f",

    "VersionControl.Log.Commit.currentBranchBackground": "#3b224c",
    "VersionControl.RefLabel.backgroundBase":    "#452859",
    "VersionControl.RefLabel.foreground":        "#dbbfef",
    "VersionControl.HunkUnifiedAdded.background":    "#1a3829",
    "VersionControl.HunkUnifiedDeleted.background":  "#3a1525",
    "VersionControl.GitLog.headIconColor":       "#9ff28f",
    "VersionControl.GitLog.localBranchIconColor":"#dbbfef",
    "VersionControl.GitLog.remoteBranchIconColor":"#a4a0e8",
    "VersionControl.GitLog.tagIconColor":        "#efba5d",

    "WelcomeScreen.background":                  "#281733",
    "WelcomeScreen.foreground":                  "#a4a0e8",
    "WelcomeScreen.borderColor":                 "#452859",
    "WelcomeScreen.Projects.background":         "#3b224c",
    "WelcomeScreen.Projects.selectionBackground":"#452859",
    "WelcomeScreen.SidePanel.background":        "#281733",

    "BadgeLabel.background":                     "#dbbfef",
    "BadgeLabel.foreground":                     "#281733",
    "Counter.background":                        "#452859",
    "Counter.foreground":                        "#dbbfef",

    "FileColor.Yellow":                          "#3b3020",
    "FileColor.Green":                           "#1a3829",
    "FileColor.Blue":                            "#2a1f4a",
    "FileColor.Violet":                          "#3b224c",
    "FileColor.Orange":                          "#3b2e20",
    "FileColor.Rose":                            "#3a1525",

    "RunWidget.background":                      "#281733",
    "RunWidget.foreground":                      "#a4a0e8",

    "breakpoint.lineBackground":                 "#3a1525",
    "Bookmark.iconBackground":                   "#efba5d"
  },
  "icons": {
    "ColorPalette": {
      "Actions.Blue":            "#a4a0e8",
      "Actions.Green":           "#9ff28f",
      "Actions.Grey":            "#5a5977",
      "Actions.GreyInline":      "#5a5977",
      "Actions.GreyInline.dark": "#5a5977",
      "Actions.Red":             "#f47868",
      "Actions.Yellow":          "#ffcd1c",
      "Objects.Blue":            "#a4a0e8",
      "Objects.Green":           "#9ff28f",
      "Objects.Grey":            "#5a5977",
      "Objects.Pink":            "#dbbfef",
      "Objects.Purple":          "#6F44F0",
      "Objects.Red":             "#f47868",
      "Objects.RedStatus":       "#f47868",
      "Objects.Yellow":          "#efba5d",
      "Objects.YellowDark":      "#E8DCA0",
      "Tree.iconColor":          "#a4a0e8",
      "Checkbox.Background.Default":      "#3b224c",
      "Checkbox.Background.Default.Dark": "#3b224c",
      "Checkbox.Background.Selected":     "#dbbfef",
      "Checkbox.Background.Selected.Dark":"#dbbfef",
      "Checkbox.Border.Default":          "#5a5977",
      "Checkbox.Border.Default.Dark":     "#5a5977",
      "Checkbox.Border.Selected":         "#dbbfef",
      "Checkbox.Border.Selected.Dark":    "#dbbfef",
      "Checkbox.Focus.Wide":              "#540099",
      "Checkbox.Focus.Wide.Dark":         "#540099",
      "Checkbox.Foreground.Selected":     "#281733",
      "Checkbox.Foreground.Selected.Dark":"#281733"
    }
  }
}
THEME_JSON

# =============================================================
# Write themes/helix-revolver.xml  (no-bold version)
# =============================================================
echo "→ Writing themes/helix-revolver.xml..."
cat > "$BUILD_DIR/themes/helix-revolver.xml" << 'EDITOR_XML'
<?xml version="1.0" encoding="UTF-8"?>
<scheme name="Helix Revolver" version="142" parent_scheme="Darcula">
  <metaInfo>
    <property name="created">2024</property>
    <property name="ide">RustRover</property>
    <property name="ideVersion">2024.1</property>
    <property name="originalScheme">Helix Revolver</property>
  </metaInfo>

  <!--
    Palette:
    midnight    = #3b224c  (main background)
    revolver    = #281733  (darker bg, statusline, popups)
    bossanova   = #452859  (cursorline, highlights)
    comet       = #5a5977  (line numbers, virtual text)
    lilac       = #dbbfef  (attributes, namespace, operator, ui text focus)
    lavender    = #a4a0e8  (variable, punctuation, ui text)
    white       = #ffffff  (function, type, constant)
    almond      = #eccdba  (keyword, tag, markup.link.text)
    chamois     = #E8DCA0  (constant.numeric)
    honey       = #efba5d  (special, escape, label/lifetime)
    mint        = #9ff28f  (variable.builtin)
    silver      = #cccccc  (string)
    sirocco     = #697C81  (comment)
    apricot     = #f47868  (error)
    lightning   = #ffcd1c  (warning)
    delta       = #6F44F0  (info)
  -->

  <colors>
    <option name="BACKGROUND"                          value="3b224c"/>
    <option name="GUTTER_BACKGROUND"                   value="3b224c"/>
    <option name="NOTIFICATION_BACKGROUND"             value="281733"/>
    <option name="CARET_COLOR"                         value="dbbfef"/>
    <option name="CARET_ROW_COLOR"                     value="452859"/>
    <option name="RIGHT_MARGIN_COLOR"                  value="452859"/>
    <option name="SELECTION_BACKGROUND"                value="540099"/>
    <option name="SELECTION_FOREGROUND"                value="ffffff"/>
    <option name="READONLY_BACKGROUND"                 value="281733"/>
    <option name="READONLY_FRAGMENT_BACKGROUND"        value="281733"/>
    <option name="WHITESPACES"                         value="5a5977"/>
    <option name="LINE_NUMBERS_COLOR"                  value="5a5977"/>
    <option name="LINE_NUMBER_ON_CARET_ROW_COLOR"      value="dbbfef"/>
    <option name="TEARLINE_COLOR"                      value="452859"/>
    <option name="INDENT_GUIDE_COLOR"                  value="5a5977"/>
    <option name="VISUAL_INDENT_GUIDE_COLOR"           value="5a5977"/>
    <option name="ADDED_LINES_COLOR"                   value="35bf86"/>
    <option name="MODIFIED_LINES_COLOR"                value="6f44f0"/>
    <option name="DELETED_LINES_COLOR"                 value="f22c86"/>
    <option name="IGNORED_ADDED_LINES_BORDER_COLOR"    value="35bf86"/>
    <option name="IGNORED_MODIFIED_LINES_BORDER_COLOR" value="6f44f0"/>
    <option name="IGNORED_DELETED_LINES_BORDER_COLOR"  value="f22c86"/>
    <option name="FOLDED_TEXT_BORDER_COLOR"            value="452859"/>
  </colors>

  <attributes>

    <!-- ── Default text ── -->
    <option name="TEXT">
      <value>
        <option name="FOREGROUND" value="a4a0e8"/>
        <option name="BACKGROUND" value="3b224c"/>
      </value>
    </option>

    <!-- ── Comments ── -->
    <option name="DEFAULT_BLOCK_COMMENT">
      <value>
        <option name="FOREGROUND" value="697C81"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>
    <option name="DEFAULT_LINE_COMMENT">
      <value>
        <option name="FOREGROUND" value="697C81"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>
    <option name="DEFAULT_DOC_COMMENT">
      <value>
        <option name="FOREGROUND" value="697C81"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>
    <option name="DEFAULT_DOC_COMMENT_TAG">
      <value>
        <option name="FOREGROUND" value="dbbfef"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>
    <option name="DEFAULT_DOC_MARKUP">
      <value>
        <option name="FOREGROUND" value="697C81"/>
      </value>
    </option>

    <!-- ── Keywords (no bold) ── -->
    <option name="DEFAULT_KEYWORD">
      <value>
        <option name="FOREGROUND" value="eccdba"/>
      </value>
    </option>

    <!-- ── Strings ── -->
    <option name="DEFAULT_STRING">
      <value>
        <option name="FOREGROUND" value="cccccc"/>
      </value>
    </option>
    <option name="DEFAULT_VALID_STRING_ESCAPE">
      <value>
        <option name="FOREGROUND" value="efba5d"/>
      </value>
    </option>
    <option name="DEFAULT_INVALID_STRING_ESCAPE">
      <value>
        <option name="FOREGROUND" value="f47868"/>
        <option name="EFFECT_COLOR" value="f47868"/>
        <option name="EFFECT_TYPE" value="2"/>
      </value>
    </option>

    <!-- ── Numbers / Constants ── -->
    <option name="DEFAULT_NUMBER">
      <value>
        <option name="FOREGROUND" value="E8DCA0"/>
      </value>
    </option>
    <option name="DEFAULT_CONSTANT">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>

    <!-- ── Functions / Methods ── -->
    <option name="DEFAULT_FUNCTION_DECLARATION">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="DEFAULT_FUNCTION_CALL">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="DEFAULT_STATIC_METHOD">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>

    <!-- ── Types / Classes ── -->
    <option name="DEFAULT_CLASS_NAME">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="DEFAULT_INTERFACE_NAME">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="DEFAULT_CLASS_REFERENCE">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="DEFAULT_TYPE_ALIAS">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="DEFAULT_ABSTRACT_CLASS_NAME">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>

    <!-- ── Variables / Parameters ── -->
    <option name="DEFAULT_LOCAL_VARIABLE">
      <value>
        <option name="FOREGROUND" value="a4a0e8"/>
      </value>
    </option>
    <option name="DEFAULT_GLOBAL_VARIABLE">
      <value>
        <option name="FOREGROUND" value="dbbfef"/>
      </value>
    </option>
    <option name="DEFAULT_INSTANCE_FIELD">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="DEFAULT_STATIC_FIELD">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>
    <option name="DEFAULT_PARAMETER">
      <value>
        <option name="FOREGROUND" value="a4a0e8"/>
      </value>
    </option>

    <!-- ── Operators / Punctuation ── -->
    <option name="DEFAULT_OPERATION_SIGN">
      <value>
        <option name="FOREGROUND" value="dbbfef"/>
      </value>
    </option>
    <option name="DEFAULT_SEMICOLON">
      <value>
        <option name="FOREGROUND" value="a4a0e8"/>
      </value>
    </option>
    <option name="DEFAULT_COMMA">
      <value>
        <option name="FOREGROUND" value="a4a0e8"/>
      </value>
    </option>
    <option name="DEFAULT_DOT">
      <value>
        <option name="FOREGROUND" value="a4a0e8"/>
      </value>
    </option>
    <option name="DEFAULT_PARENTHS">
      <value>
        <option name="FOREGROUND" value="a4a0e8"/>
      </value>
    </option>
    <option name="DEFAULT_BRACKETS">
      <value>
        <option name="FOREGROUND" value="a4a0e8"/>
      </value>
    </option>
    <option name="DEFAULT_BRACES">
      <value>
        <option name="FOREGROUND" value="a4a0e8"/>
      </value>
    </option>

    <!-- ── Macros ── -->
    <option name="DEFAULT_MACRO">
      <value>
        <option name="FOREGROUND" value="dbbfef"/>
      </value>
    </option>
    <option name="DEFAULT_TEMPLATE_LANGUAGE_COLOR">
      <value>
        <option name="BACKGROUND" value="452859"/>
      </value>
    </option>

    <!-- ── Labels / Tags / Attributes ── -->
    <option name="DEFAULT_LABEL">
      <value>
        <option name="FOREGROUND" value="efba5d"/>
      </value>
    </option>
    <option name="DEFAULT_TAG">
      <value>
        <option name="FOREGROUND" value="eccdba"/>
      </value>
    </option>
    <option name="DEFAULT_ATTRIBUTE">
      <value>
        <option name="FOREGROUND" value="dbbfef"/>
      </value>
    </option>

    <!-- ── Namespace / Module ── -->
    <option name="DEFAULT_CLASS_REFERENCE">
      <value>
        <option name="FOREGROUND" value="dbbfef"/>
      </value>
    </option>

    <!-- ── Markup / Markdown (no bold) ── -->
    <option name="DEFAULT_MARKUP_HEADER">
      <value>
        <option name="FOREGROUND" value="dbbfef"/>
      </value>
    </option>

    <!-- ── Search / Highlights ── -->
    <option name="TEXT_SEARCH_RESULT_ATTRIBUTES">
      <value>
        <option name="BACKGROUND" value="452859"/>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="SEARCH_RESULT_ATTRIBUTES">
      <value>
        <option name="BACKGROUND" value="452859"/>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="WRITE_SEARCH_RESULT_ATTRIBUTES">
      <value>
        <option name="BACKGROUND" value="452859"/>
      </value>
    </option>

    <!-- ── Matched braces (no bold) ── -->
    <option name="MATCHED_BRACE_ATTRIBUTES">
      <value>
        <option name="BACKGROUND" value="452859"/>
        <option name="FOREGROUND" value="9ff28f"/>
      </value>
    </option>
    <option name="UNMATCHED_BRACE_ATTRIBUTES">
      <value>
        <option name="BACKGROUND" value="f47868"/>
        <option name="FOREGROUND" value="281733"/>
      </value>
    </option>

    <!-- ── Errors / Warnings / Diagnostics ── -->
    <option name="ERROR_ATTRIBUTES">
      <value>
        <option name="EFFECT_COLOR" value="f47868"/>
        <option name="EFFECT_TYPE" value="2"/>
      </value>
    </option>
    <option name="WARNING_ATTRIBUTES">
      <value>
        <option name="EFFECT_COLOR" value="ffcd1c"/>
        <option name="EFFECT_TYPE" value="2"/>
      </value>
    </option>
    <option name="INFO_ATTRIBUTES">
      <value>
        <option name="EFFECT_COLOR" value="6F44F0"/>
        <option name="EFFECT_TYPE" value="2"/>
      </value>
    </option>
    <option name="WEAK_WARNING_ATTRIBUTES">
      <value>
        <option name="EFFECT_COLOR" value="cccccc"/>
        <option name="EFFECT_TYPE" value="2"/>
      </value>
    </option>
    <option name="DEPRECATED_ATTRIBUTES">
      <value>
        <option name="EFFECT_COLOR" value="5a5977"/>
        <option name="EFFECT_TYPE" value="3"/>
      </value>
    </option>
    <option name="UNUSED_SYMBOL_ATTRIBUTES">
      <value>
        <option name="FOREGROUND" value="5a5977"/>
      </value>
    </option>
    <option name="NOT_USED_ELEMENT_ATTRIBUTES">
      <value>
        <option name="FOREGROUND" value="5a5977"/>
      </value>
    </option>
    <option name="RUNTIME_ERROR">
      <value>
        <option name="EFFECT_COLOR" value="f47868"/>
        <option name="EFFECT_TYPE" value="2"/>
      </value>
    </option>
    <option name="GENERIC_SERVER_ERROR_OR_WARNING">
      <value>
        <option name="EFFECT_COLOR" value="ffcd1c"/>
        <option name="EFFECT_TYPE" value="2"/>
      </value>
    </option>

    <!-- ── Diff colors ── -->
    <option name="DIFF_INSERTED">
      <value>
        <option name="BACKGROUND" value="1a3829"/>
      </value>
    </option>
    <option name="DIFF_DELETED">
      <value>
        <option name="BACKGROUND" value="3a1525"/>
      </value>
    </option>
    <option name="DIFF_MODIFIED">
      <value>
        <option name="BACKGROUND" value="2a1f4a"/>
      </value>
    </option>
    <option name="DIFF_CONFLICT">
      <value>
        <option name="BACKGROUND" value="3a1525"/>
      </value>
    </option>

    <!-- ── Inlay hints ── -->
    <option name="INLAY_HINT">
      <value>
        <option name="FOREGROUND" value="5a5977"/>
        <option name="BACKGROUND" value="281733"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>
    <option name="INLAY_HINT_HIGHLIGHTED">
      <value>
        <option name="FOREGROUND" value="a4a0e8"/>
        <option name="BACKGROUND" value="452859"/>
      </value>
    </option>
    <option name="INLAY_HINT_PARAMETER">
      <value>
        <option name="FOREGROUND" value="5a5977"/>
        <option name="BACKGROUND" value="281733"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>
    <option name="INLAY_HINT_TYPE">
      <value>
        <option name="FOREGROUND" value="5a5977"/>
        <option name="BACKGROUND" value="281733"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>

    <!-- ── Rust-specific ── -->
    <option name="org.rust.LIFETIME">
      <value>
        <option name="FOREGROUND" value="efba5d"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>
    <option name="org.rust.TYPE_PARAMETER">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="org.rust.MACRO">
      <value>
        <option name="FOREGROUND" value="dbbfef"/>
      </value>
    </option>
    <option name="org.rust.MUT_BINDING">
      <value>
        <option name="FOREGROUND" value="a4a0e8"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>
    <option name="org.rust.UNSAFE_CODE">
      <value>
        <option name="BACKGROUND" value="452859"/>
      </value>
    </option>
    <option name="org.rust.TRAIT">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
        <option name="FONT_TYPE" value="2"/>
      </value>
    </option>
    <option name="org.rust.STRUCT">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="org.rust.ENUM">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="org.rust.ENUM_VARIANT">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="org.rust.FUNCTION">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="org.rust.METHOD">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="org.rust.FIELD">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="org.rust.CONSTANT">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>
    <option name="org.rust.MODULE">
      <value>
        <option name="FOREGROUND" value="dbbfef"/>
      </value>
    </option>
    <option name="org.rust.ATTRIBUTE">
      <value>
        <option name="FOREGROUND" value="dbbfef"/>
      </value>
    </option>
    <option name="org.rust.KEYWORD">
      <value>
        <option name="FOREGROUND" value="eccdba"/>
      </value>
    </option>
    <option name="org.rust.NUMBER">
      <value>
        <option name="FOREGROUND" value="E8DCA0"/>
      </value>
    </option>
    <option name="org.rust.STRING">
      <value>
        <option name="FOREGROUND" value="cccccc"/>
      </value>
    </option>
    <option name="org.rust.VALID_STRING_ESCAPE">
      <value>
        <option name="FOREGROUND" value="efba5d"/>
      </value>
    </option>
    <option name="org.rust.SELF_PARAMETER">
      <value>
        <option name="FOREGROUND" value="9ff28f"/>
      </value>
    </option>
    <option name="org.rust.TYPE_ALIAS">
      <value>
        <option name="FOREGROUND" value="ffffff"/>
      </value>
    </option>

  </attributes>
</scheme>
EDITOR_XML

# =============================================================
# Package everything into a JAR
# (A JAR is just a ZIP — use jar if available, otherwise zip)
# =============================================================
echo "→ Building JAR..."
cd "$BUILD_DIR"
if command -v jar &>/dev/null; then
    jar cf "${OLDPWD}/${PLUGIN_NAME}.jar" META-INF themes
elif command -v zip &>/dev/null; then
    zip -r "${OLDPWD}/${PLUGIN_NAME}.jar" META-INF themes
else
    echo "❌ Error: neither 'jar' nor 'zip' found. Install either the JDK or zip."
    exit 1
fi

echo ""
echo "✅ Done! JAR created: $(pwd)/${PLUGIN_NAME}.jar"
echo ""
echo "To install in your JetBrains IDE:"
echo "  Settings → Plugins → ⚙ → Install Plugin from Disk → select ${PLUGIN_NAME}.jar"
