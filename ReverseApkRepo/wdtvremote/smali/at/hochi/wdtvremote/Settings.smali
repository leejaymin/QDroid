.class public Lat/hochi/wdtvremote/Settings;
.super Landroid/app/Activity;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field saveButton:Landroid/widget/Button;

.field serverIp:Landroid/widget/EditText;

.field serverPassword:Landroid/widget/EditText;

.field serverPort:Landroid/widget/EditText;

.field serverUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-virtual {p0}, Lat/hochi/wdtvremote/Settings;->saveSettings()V

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x7f06001d
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/Settings;->setContentView(I)V

    .line 29
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverIp:Landroid/widget/EditText;

    .line 30
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverPort:Landroid/widget/EditText;

    .line 31
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverUsername:Landroid/widget/EditText;

    .line 32
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverPassword:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-static {p0}, Lat/hochi/wdtvremote/controler/Config;->load(Landroid/app/Activity;)V

    .line 38
    sget-object v0, Lat/hochi/wdtvremote/controler/Config;->serverIpAdress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverIp:Landroid/widget/EditText;

    sget-object v1, Lat/hochi/wdtvremote/controler/Config;->serverIpAdress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_0
    sget-object v0, Lat/hochi/wdtvremote/controler/Config;->serverPort:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverPort:Landroid/widget/EditText;

    sget-object v1, Lat/hochi/wdtvremote/controler/Config;->serverPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_1
    sget-object v0, Lat/hochi/wdtvremote/controler/Config;->serverUsername:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverUsername:Landroid/widget/EditText;

    sget-object v1, Lat/hochi/wdtvremote/controler/Config;->serverUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_2
    sget-object v0, Lat/hochi/wdtvremote/controler/Config;->serverPassword:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverPassword:Landroid/widget/EditText;

    sget-object v1, Lat/hochi/wdtvremote/controler/Config;->serverPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    return-void
.end method

.method public saveSettings()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverIp:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lat/hochi/wdtvremote/controler/Config;->serverIpAdress:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverPort:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lat/hochi/wdtvremote/controler/Config;->serverPort:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lat/hochi/wdtvremote/controler/Config;->serverUsername:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lat/hochi/wdtvremote/Settings;->serverPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lat/hochi/wdtvremote/controler/Config;->serverPassword:Ljava/lang/String;

    .line 75
    invoke-static {p0}, Lat/hochi/wdtvremote/controler/Config;->save(Landroid/app/Activity;)V

    .line 76
    return-void
.end method
