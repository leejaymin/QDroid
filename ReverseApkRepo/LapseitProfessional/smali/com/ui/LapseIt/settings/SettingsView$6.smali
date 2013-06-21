.class Lcom/ui/LapseIt/settings/SettingsView$6;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/settings/SettingsView;->populateCapture(Landroid/widget/LinearLayout;[[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/settings/SettingsView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsView$6;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 145
    const/4 v5, 0x4

    if-ne p2, v5, :cond_1

    .line 146
    iget-object v5, p0, Lcom/ui/LapseIt/settings/SettingsView$6;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/ui/LapseIt/settings/SettingsView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 147
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, checkedValue:I
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    :goto_0
    if-nez v1, :cond_0

    .line 160
    const/4 v1, 0x1

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsView$6;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    iget-object v4, v4, Lcom/ui/LapseIt/settings/SettingsView;->captureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->requestFocus()Z

    move-object v4, p1

    .line 165
    check-cast v4, Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v5, p0, Lcom/ui/LapseIt/settings/SettingsView$6;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/high16 v6, 0x7f0b

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v4, 0x1

    .line 169
    .end local v1           #checkedValue:I
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v4

    .line 154
    .restart local v1       #checkedValue:I
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v2

    .line 155
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const-string v4, "trace"

    const-string v5, "No value for intervals"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
