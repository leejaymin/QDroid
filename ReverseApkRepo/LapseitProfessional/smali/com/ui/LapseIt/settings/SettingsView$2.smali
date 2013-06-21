.class Lcom/ui/LapseIt/settings/SettingsView$2;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/SettingsView;
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
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/high16 v7, 0x7f0b

    const/4 v8, 0x0

    .line 205
    const/4 v5, 0x6

    if-eq p2, v5, :cond_0

    .line 206
    if-nez p2, :cond_3

    .line 207
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x42

    if-ne v5, v6, :cond_3

    .line 209
    :cond_0
    iget-object v5, p0, Lcom/ui/LapseIt/settings/SettingsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/ui/LapseIt/settings/SettingsView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 210
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 212
    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 214
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, settingKey:Ljava/lang/String;
    const/4 v0, 0x0

    .line 218
    .local v0, checkedValue:I
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 219
    const-string v5, "interval"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    iget-object v5, p0, Lcom/ui/LapseIt/settings/SettingsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    const-string v6, "timescale"

    invoke-static {v5, v6}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, settingsTimeScale:Ljava/lang/String;
    const-string v5, "milliseconds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x64

    if-ge v0, v5, :cond_1

    .line 222
    const/16 v0, 0x64

    .line 231
    .end local v4           #settingsTimeScale:Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 232
    const/4 v0, 0x1

    .line 235
    :cond_2
    iget-object v5, p0, Lcom/ui/LapseIt/settings/SettingsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    iget-object v5, v5, Lcom/ui/LapseIt/settings/SettingsView;->captureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 237
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v6, p0, Lcom/ui/LapseIt/settings/SettingsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v0           #checkedValue:I
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #settingKey:Ljava/lang/String;
    :cond_3
    return v8

    .line 226
    .restart local v0       #checkedValue:I
    .restart local v2       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v3       #settingKey:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 227
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    const-string v5, "trace"

    const-string v6, "No value for intervals"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
