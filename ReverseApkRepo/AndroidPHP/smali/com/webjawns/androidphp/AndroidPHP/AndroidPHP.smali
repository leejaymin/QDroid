.class public Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;
.super Landroid/app/Activity;
.source "AndroidPHP.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final ANDROIDPHP_WEBKIT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final ANDROIDPHP_WEBKIT_MIME_TYPE:Ljava/lang/String; = "text/html"

.field private static final MENU_ABOUT:I = 0x1

.field private static final MENU_CLEAR:I = 0x0

.field private static final MENU_EXIT:I = 0x2

.field private static final SERVICE_ENDPOINT:Ljava/lang/String; = "http://android.webjawns.com/phpdoc/"


# instance fields
.field content:Landroid/webkit/WebView;

.field edit:Landroid/widget/EditText;

.field items:[Ljava/lang/String;

.field submitButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->items:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->updatePhpContent()V

    return-void
.end method

.method private clearFields()V
    .locals 4

    .prologue
    const-string v3, ""

    .line 111
    iget-object v0, p0, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->edit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->content:Landroid/webkit/WebView;

    const-string v1, ""

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v3, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private exit()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->finish()V

    .line 108
    return-void
.end method

.method private showAboutDialog()V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    const-string v1, "AndroidPHP"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 118
    const-string v1, "AndroidPHP is brought to you by webjawns.com. Please be patient while we gradually add all PHP documentation."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 119
    const-string v1, "Close"

    new-instance v2, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP$2;

    invoke-direct {v2, p0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP$2;-><init>(Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 124
    return-void
.end method

.method private updatePhpContent()V
    .locals 6

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://android.webjawns.com/phpdoc/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, uriBuilder:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "?search="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->edit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "+"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, uriBuilderString:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->content:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 60
    .local v0, t:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Request failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xfa0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 75
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->setContentView(I)V

    .line 38
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->content:Landroid/webkit/WebView;

    .line 40
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->edit:Landroid/widget/EditText;

    .line 42
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->submitButton:Landroid/widget/Button;

    .line 43
    iget-object v0, p0, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->submitButton:Landroid/widget/Button;

    new-instance v1, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP$1;

    invoke-direct {v1, p0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP$1;-><init>(Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    const-string v0, "Clear"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 83
    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 84
    const-string v0, "About"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 85
    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 86
    const/4 v0, 0x2

    const-string v1, "Exit"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 87
    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 88
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 94
    :pswitch_0
    invoke-direct {p0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->clearFields()V

    move v0, v1

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    invoke-direct {p0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->showAboutDialog()V

    move v0, v1

    .line 98
    goto :goto_0

    .line 100
    :pswitch_2
    invoke-direct {p0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->exit()V

    move v0, v1

    .line 101
    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 67
    return-void
.end method
