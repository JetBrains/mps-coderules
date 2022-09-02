package jetbrains.mps.coderules.ideaplugin;

/*Generated by MPS */

import jetbrains.mps.annotations.GeneratedClass;
import javax.swing.JPanel;
import com.intellij.openapi.options.SearchableConfigurable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.NonNls;
import com.intellij.openapi.util.NlsContexts;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.Nullable;
import javax.swing.JComponent;
import com.intellij.openapi.options.ConfigurationException;
import javax.swing.BoxLayout;
import com.intellij.ui.components.JBCheckBox;
import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;
import javax.swing.Box;
import com.intellij.ui.IdeBorderFactory;
import com.intellij.util.ui.JBUI;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JCheckBox;

@GeneratedClass(node = "r:835f8ea3-a800-4588-a80b-1de6d47c2098(jetbrains.mps.coderules.ideaplugin)/551453226825312425", model = "r:835f8ea3-a800-4588-a80b-1de6d47c2098(jetbrains.mps.coderules.ideaplugin)")
public class TypecheckingSettingsPage extends JPanel implements SearchableConfigurable {

  public TypecheckingSettingsPage() {
    TypecheckingSettings settings = TypecheckingSettings.getInstace();
    init();
  }

  @NotNull
  @NonNls
  @Override
  public String getId() {
    return "preferences.typecheckingSettings";
  }
  @NlsContexts.ConfigurableName
  @Contract(pure = true)
  @Override
  public String getDisplayName() {
    return "Typechecking";
  }
  @Nullable
  @Override
  public JComponent createComponent() {
    return this;
  }
  @Override
  public boolean isModified() {
    TypecheckingSettings settings = TypecheckingSettings.getInstace();
    boolean modified = false;
    modified |= settings.isTypecheckingEnabled() != this.isTypecheckingEnabled();
    modified |= settings.isWatchingEnabled() != this.isWatchingEnabled();
    modified |= settings.isReportingEnabled() != this.isReportingEnabled();
    modified |= settings.isTracingEnabled() != this.isTracingEnabled();
    modified |= settings.isProfilingEnabled() != this.isProfilingEnabled();
    return modified;
  }
  @Override
  public void apply() throws ConfigurationException {
    TypecheckingSettings settings = TypecheckingSettings.getInstace();
    settings.setTypecheckingEnabled(this.isTypecheckingEnabled());
    settings.setWatchingEnabled(this.isWatchingEnabled());
    settings.setReportingEnabled(this.isReportingEnabled());
    settings.setTracingEnabled(this.isTracingEnabled());
    settings.setProfilingEnabled(this.isProfilingEnabled());
  }
  @Override
  public void reset() {
    TypecheckingSettings settings = TypecheckingSettings.getInstace();
    this.setTypecheckingEnabled(settings.isTypecheckingEnabled());
    this.setWatchingEnabled(settings.isWatchingEnabled());
    this.setReportingEnabled(settings.isReportingEnabled());
    this.setTracingEnabled(settings.isTracingEnabled());
    this.setProfilingEnabled(settings.isProfilingEnabled());
  }
  private void init() {
    setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));

    this.enableTypecheckingCheckbox = new JBCheckBox("Enable experimental typechecking with Coderules");
    this.enableWatchingCheckbox = new JBCheckBox("Watch model changes and collect updates");
    this.enableReportingCheckbox = new JBCheckBox("Report evaluation results");
    this.enableTraceCheckbox = new JBCheckBox("Collect trace events");
    this.enableProfilingCheckbox = new JBCheckBox("Collect profiling data");

    ItemListener updater = new ItemListener() {
      @Override
      public void itemStateChanged(ItemEvent e) {
        updateEnabledState();
      }
    };
    enableTypecheckingCheckbox.addItemListener(updater);
    enableWatchingCheckbox.addItemListener(updater);
    enableReportingCheckbox.addItemListener(updater);

    {
      JPanel mainPanel = new JPanel();
      mainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.Y_AXIS));
      mainPanel.add(Box.createHorizontalGlue());
      mainPanel.setBorder(IdeBorderFactory.createTitledBorder("Typechecking", false));

      {
        JPanel subpanel = new JPanel();
        subpanel.setLayout(new BoxLayout(subpanel, BoxLayout.Y_AXIS));
        subpanel.add(Box.createVerticalStrut(0));
        subpanel.setBorder(JBUI.Borders.emptyLeft(20));

        subpanel.add(this.enableTypecheckingCheckbox);

        mainPanel.add(subpanel);
      }

      add(mainPanel);

      // ----------

      JPanel editorPanel = new JPanel();
      editorPanel.setLayout(new BoxLayout(editorPanel, BoxLayout.Y_AXIS));
      editorPanel.add(Box.createHorizontalGlue());
      editorPanel.setBorder(IdeBorderFactory.createTitledBorder("Editor integration", false));

      {
        JPanel subpanel = new JPanel();
        subpanel.setLayout(new BoxLayout(subpanel, BoxLayout.Y_AXIS));
        subpanel.add(Box.createVerticalStrut(0));
        subpanel.setBorder(JBUI.Borders.emptyLeft(20));

        subpanel.add(this.enableWatchingCheckbox);

        editorPanel.add(subpanel);
      }

      add(editorPanel);

      // ---------

      JPanel advancedPanel = new JPanel();
      advancedPanel.setLayout(new BoxLayout(advancedPanel, BoxLayout.Y_AXIS));
      advancedPanel.add(Box.createHorizontalGlue());
      advancedPanel.setBorder(IdeBorderFactory.createTitledBorder("Advanced", false));

      {
        JPanel subpanel = new JPanel();
        subpanel.setLayout(new BoxLayout(subpanel, BoxLayout.Y_AXIS));
        subpanel.add(Box.createVerticalStrut(0));
        subpanel.setBorder(JBUI.Borders.emptyLeft(20));

        subpanel.add(new JLabel("When evaluating Coderules program:"));

        {
          JPanel subsubpanel = new JPanel();
          subsubpanel.setLayout(new BoxLayout(subsubpanel, BoxLayout.Y_AXIS));
          subsubpanel.add(Box.createVerticalStrut(0));
          subsubpanel.setBorder(JBUI.Borders.emptyLeft(20));

          subsubpanel.add(this.enableReportingCheckbox);

          subsubpanel.add(this.enableTraceCheckbox);

          JPanel warnPanel = new JPanel();
          warnPanel.setLayout(new BoxLayout(warnPanel, BoxLayout.Y_AXIS));
          warnPanel.add(Box.createVerticalStrut(5));
          warnPanel.setBorder(JBUI.Borders.emptyLeft(25));

          {
            JLabel warnLabel = new JLabel("Using this option may result in excessive memory consumption");
            Font font = warnLabel.getFont();
            warnLabel.setFont(font.deriveFont(font.getSize2D() * 0.9f));
            warnLabel.setEnabled(false);

            warnPanel.add(warnLabel);
          }

          subsubpanel.add(warnPanel);

          subsubpanel.add(this.enableProfilingCheckbox);

          subpanel.add(subsubpanel);
        }

        advancedPanel.add(subpanel);
      }

      add(advancedPanel);
    }
  }

  public boolean isTypecheckingEnabled() {
    return enableTypecheckingCheckbox.isSelected();
  }

  public boolean isWatchingEnabled() {
    return enableWatchingCheckbox.isSelected();
  }

  public boolean isTracingEnabled() {
    return enableTraceCheckbox.isSelected();
  }

  public boolean isProfilingEnabled() {
    return enableProfilingCheckbox.isSelected();
  }

  public boolean isReportingEnabled() {
    return enableReportingCheckbox.isSelected();
  }

  public void setTypecheckingEnabled(boolean yes) {
    this.enableTypecheckingCheckbox.setSelected(yes);
    updateEnabledState();
  }

  public void setWatchingEnabled(boolean yes) {
    this.enableWatchingCheckbox.setSelected(yes);
    updateEnabledState();
  }

  public void setReportingEnabled(boolean yes) {
    this.enableReportingCheckbox.setSelected(yes);
  }

  public void setTracingEnabled(boolean yes) {
    this.enableTraceCheckbox.setSelected(yes);
  }

  public void setProfilingEnabled(boolean yes) {
    this.enableProfilingCheckbox.setSelected(yes);
  }

  private void updateEnabledState() {
    this.enableWatchingCheckbox.setEnabled(this.enableTypecheckingCheckbox.isSelected());
    this.enableReportingCheckbox.setEnabled(this.enableTypecheckingCheckbox.isSelected());
    this.enableTraceCheckbox.setEnabled(this.enableTypecheckingCheckbox.isSelected() && this.enableReportingCheckbox.isSelected());
    this.enableProfilingCheckbox.setEnabled(this.enableTypecheckingCheckbox.isSelected() && this.enableReportingCheckbox.isSelected());
  }

  private JCheckBox enableTypecheckingCheckbox;
  private JCheckBox enableWatchingCheckbox;
  private JCheckBox enableReportingCheckbox;
  private JCheckBox enableTraceCheckbox;
  private JCheckBox enableProfilingCheckbox;

}
