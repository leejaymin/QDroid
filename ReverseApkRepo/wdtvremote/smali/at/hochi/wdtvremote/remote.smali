.class public Lat/hochi/wdtvremote/remote;
.super Landroid/app/Activity;
.source "remote.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field c:Lat/hochi/wdtvremote/controler/ConnectionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lat/hochi/wdtvremote/remote;->c:Lat/hochi/wdtvremote/controler/ConnectionHandler;

    .line 17
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 133
    :pswitch_0
    const-string v0, "w"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_1
    const-string v0, "o"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_2
    const-string v0, "u"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_3
    const-string v0, "l"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_4
    const-string v0, "n"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_5
    const-string v0, "r"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_6
    const-string v0, "d"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_7
    const-string v0, "T_back"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_8
    const-string v0, "t_stop"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_9
    const-string v0, "G"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :pswitch_a
    const-string v0, "H"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_b
    const-string v0, "p"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :pswitch_c
    const-string v0, "I"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_d
    const-string v0, "["

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_e
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_f
    const-string v0, "E"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :pswitch_10
    const-string v0, "X"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x7f060000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->setContentView(I)V

    .line 60
    invoke-static {p0}, Lat/hochi/wdtvremote/controler/Config;->load(Landroid/app/Activity;)V

    .line 61
    const-string v1, "Config.serverIpAdress"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lat/hochi/wdtvremote/controler/Config;->serverIpAdress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v1, Lat/hochi/wdtvremote/controler/Config;->serverIpAdress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lat/hochi/wdtvremote/controler/Config;->serverPort:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lat/hochi/wdtvremote/controler/Config;->serverUsername:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Lat/hochi/wdtvremote/controler/Config;->serverPassword:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 67
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lat/hochi/wdtvremote/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->startActivity(Landroid/content/Intent;)V

    .line 72
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    new-instance v1, Lat/hochi/wdtvremote/controler/ConnectionHandler;

    invoke-direct {v1}, Lat/hochi/wdtvremote/controler/ConnectionHandler;-><init>()V

    iput-object v1, p0, Lat/hochi/wdtvremote/remote;->c:Lat/hochi/wdtvremote/controler/ConnectionHandler;

    .line 73
    iget-object v1, p0, Lat/hochi/wdtvremote/remote;->c:Lat/hochi/wdtvremote/controler/ConnectionHandler;

    invoke-virtual {v1}, Lat/hochi/wdtvremote/controler/ConnectionHandler;->start()V

    .line 76
    const/high16 v1, 0x7f06

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f06000f

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/remote;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 26
    invoke-virtual {p0}, Lat/hochi/wdtvremote/remote;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 27
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 29
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 124
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 108
    :pswitch_0
    const-string v0, "l"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v0, "r"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_2
    const-string v0, "u"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_3
    const-string v0, "d"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_4
    const-string v0, "n"

    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 34
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 37
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lat/hochi/wdtvremote/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lat/hochi/wdtvremote/remote;->startActivity(Landroid/content/Intent;)V

    .line 40
    const/4 v1, 0x1

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x7f06001e
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lat/hochi/wdtvremote/remote;->c:Lat/hochi/wdtvremote/controler/ConnectionHandler;

    invoke-virtual {v0}, Lat/hochi/wdtvremote/controler/ConnectionHandler;->stop()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lat/hochi/wdtvremote/remote;->c:Lat/hochi/wdtvremote/controler/ConnectionHandler;

    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    return-void
.end method

.method send(Ljava/lang/String;)V
    .locals 4
    .parameter "command"

    .prologue
    .line 97
    iget-object v0, p0, Lat/hochi/wdtvremote/remote;->c:Lat/hochi/wdtvremote/controler/ConnectionHandler;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lat/hochi/wdtvremote/remote;->c:Lat/hochi/wdtvremote/controler/ConnectionHandler;

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > /tmp/ir_injection\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lat/hochi/wdtvremote/controler/ConnectionHandler;->sendDataNow(Ljava/lang/Object;)V

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v0, "remote"

    const-string v1, "connection not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
