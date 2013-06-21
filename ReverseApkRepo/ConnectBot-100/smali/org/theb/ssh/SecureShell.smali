.class public Lorg/theb/ssh/SecureShell;
.super Landroid/app/Activity;
.source "SecureShell.java"

# interfaces
.implements Lorg/theb/ssh/FeedbackUI;
.implements Lcom/trilead/ssh2/ConnectionMonitor;


# static fields
.field private static final HOSTNAME_INDEX:I = 0x1

.field static final PASSWORD_REQUEST:I = 0x0

.field private static final PORT_INDEX:I = 0x3

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final USERNAME_INDEX:I = 0x2


# instance fields
.field private mConn:Lorg/theb/ssh/ConnectionThread;

.field private mCursor:Landroid/database/Cursor;

.field final mDisconnectAlert:Ljava/lang/Runnable;

.field private mDisconnectReason:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field private mHostname:Ljava/lang/String;

.field private mIsWaiting:Z

.field private mKMap:Landroid/view/KeyCharacterMap;

.field private mMetaState:Z

.field private mPort:I

.field private mTerminal:Lorg/theb/ssh/Terminal;

.field final mUpdateWaiting:Ljava/lang/Runnable;

.field private mUsername:Ljava/lang/String;

.field private mWaitingMessage:Ljava/lang/String;

.field private mWaitingTitle:Ljava/lang/String;

.field private progress:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 54
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 55
    const-string v2, "hostname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 56
    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 57
    const-string v2, "port"

    aput-object v2, v0, v1

    .line 53
    sput-object v0, Lorg/theb/ssh/SecureShell;->PROJECTION:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/theb/ssh/SecureShell;->mMetaState:Z

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/theb/ssh/SecureShell;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lorg/theb/ssh/SecureShell$1;

    invoke-direct {v0, p0}, Lorg/theb/ssh/SecureShell$1;-><init>(Lorg/theb/ssh/SecureShell;)V

    iput-object v0, p0, Lorg/theb/ssh/SecureShell;->mUpdateWaiting:Ljava/lang/Runnable;

    .line 215
    new-instance v0, Lorg/theb/ssh/SecureShell$2;

    invoke-direct {v0, p0}, Lorg/theb/ssh/SecureShell$2;-><init>(Lorg/theb/ssh/SecureShell;)V

    iput-object v0, p0, Lorg/theb/ssh/SecureShell;->mDisconnectAlert:Ljava/lang/Runnable;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lorg/theb/ssh/SecureShell;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/theb/ssh/SecureShell;->mIsWaiting:Z

    return v0
.end method

.method static synthetic access$1(Lorg/theb/ssh/SecureShell;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lorg/theb/ssh/SecureShell;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mWaitingTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lorg/theb/ssh/SecureShell;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mWaitingMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lorg/theb/ssh/SecureShell;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lorg/theb/ssh/SecureShell;->progress:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public askPassword()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/theb/ssh/PasswordDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/theb/ssh/SecureShell;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    return-void
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 232
    const-string v0, "SSH"

    const-string v1, "Connection ended."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/theb/ssh/SecureShell;->mDisconnectReason:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/theb/ssh/SecureShell;->mDisconnectAlert:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mConn:Lorg/theb/ssh/ConnectionThread;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/theb/ssh/ConnectionThread;->setPassword(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedValues"

    .prologue
    const/4 v2, 0x2

    const-string v7, "SSH"

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0, v2}, Lorg/theb/ssh/SecureShell;->requestWindowFeature(I)Z

    .line 94
    new-instance v0, Lorg/theb/ssh/JTATerminalView;

    invoke-direct {v0, p0}, Lorg/theb/ssh/JTATerminalView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/theb/ssh/SecureShell;->mTerminal:Lorg/theb/ssh/Terminal;

    .line 97
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mTerminal:Lorg/theb/ssh/Terminal;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/theb/ssh/SecureShell;->setContentView(Landroid/view/View;)V

    .line 99
    const-string v0, "SSH"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "using URI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/theb/ssh/SecureShell;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/theb/ssh/SecureShell;->mHostname:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/theb/ssh/SecureShell;->mUsername:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lorg/theb/ssh/SecureShell;->mPort:I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/theb/ssh/SecureShell;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/theb/ssh/SecureShell;->mHostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, title:Ljava/lang/String;
    iget v0, p0, Lorg/theb/ssh/SecureShell;->mPort:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/theb/ssh/SecureShell;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 112
    :cond_0
    invoke-virtual {p0, v6}, Lorg/theb/ssh/SecureShell;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v0, Lorg/theb/ssh/TrileadConnectionThread;

    iget-object v2, p0, Lorg/theb/ssh/SecureShell;->mTerminal:Lorg/theb/ssh/Terminal;

    iget-object v3, p0, Lorg/theb/ssh/SecureShell;->mHostname:Ljava/lang/String;

    iget-object v4, p0, Lorg/theb/ssh/SecureShell;->mUsername:Ljava/lang/String;

    iget v5, p0, Lorg/theb/ssh/SecureShell;->mPort:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/theb/ssh/TrileadConnectionThread;-><init>(Lorg/theb/ssh/FeedbackUI;Lorg/theb/ssh/Terminal;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/theb/ssh/SecureShell;->mConn:Lorg/theb/ssh/ConnectionThread;

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lorg/theb/ssh/SecureShell;->mKMap:Landroid/view/KeyCharacterMap;

    .line 118
    const-string v0, "SSH"

    const-string v0, "Starting new ConnectionThread"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mConn:Lorg/theb/ssh/ConnectionThread;

    invoke-virtual {v0}, Lorg/theb/ssh/ConnectionThread;->start()V

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 163
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mConn:Lorg/theb/ssh/ConnectionThread;

    invoke-virtual {v0}, Lorg/theb/ssh/ConnectionThread;->finish()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/theb/ssh/SecureShell;->mConn:Lorg/theb/ssh/ConnectionThread;

    .line 166
    invoke-virtual {p0}, Lorg/theb/ssh/SecureShell;->finish()V

    .line 167
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 171
    iget-object v4, p0, Lorg/theb/ssh/SecureShell;->mConn:Lorg/theb/ssh/ConnectionThread;

    invoke-virtual {v4}, Lorg/theb/ssh/ConnectionThread;->getWriter()Ljava/io/OutputStream;

    move-result-object v2

    .line 172
    .local v2, out:Ljava/io/OutputStream;
    if-eqz v2, :cond_6

    .line 174
    :try_start_0
    iget-object v4, p0, Lorg/theb/ssh/SecureShell;->mKMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v4, p1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 175
    const/16 v4, 0x3e

    if-ne p1, v4, :cond_5

    .line 176
    :cond_0
    iget-object v4, p0, Lorg/theb/ssh/SecureShell;->mKMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    .line 177
    .local v0, c:I
    iget-boolean v4, p0, Lorg/theb/ssh/SecureShell;->mMetaState:Z

    if-eqz v4, :cond_2

    .line 179
    const/16 v4, 0x61

    if-lt v0, v4, :cond_4

    const/16 v4, 0x79

    if-gt v0, v4, :cond_4

    .line 180
    add-int/lit8 v0, v0, -0x60

    .line 183
    :cond_1
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/theb/ssh/SecureShell;->mMetaState:Z

    .line 185
    :cond_2
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .end local v0           #c:I
    :cond_3
    :goto_1
    move v4, v6

    .line 212
    :goto_2
    return v4

    .line 181
    .restart local v0       #c:I
    :cond_4
    const/16 v4, 0x40

    if-lt v0, v4, :cond_1

    const/16 v4, 0x59

    if-gt v0, v4, :cond_1

    .line 182
    add-int/lit8 v0, v0, -0x39

    goto :goto_0

    .line 186
    .end local v0           #c:I
    :cond_5
    const/16 v4, 0x43

    if-ne p1, v4, :cond_7

    .line 187
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 209
    .local v1, e:Ljava/io/IOException;
    const-string v4, "SSH"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t write to stdout: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v1           #e:Ljava/io/IOException;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_2

    .line 188
    :cond_7
    const/16 v4, 0x42

    if-eq p1, v4, :cond_8

    .line 189
    const/16 v4, 0x15

    if-eq p1, v4, :cond_8

    .line 190
    const/16 v4, 0x13

    if-eq p1, v4, :cond_8

    .line 191
    const/16 v4, 0x14

    if-eq p1, v4, :cond_8

    .line 192
    const/16 v4, 0x16

    if-ne p1, v4, :cond_9

    .line 193
    :cond_8
    :try_start_1
    iget-object v4, p0, Lorg/theb/ssh/SecureShell;->mTerminal:Lorg/theb/ssh/Terminal;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-interface {v4, p1, v5}, Lorg/theb/ssh/Terminal;->getKeyCode(II)[B

    move-result-object v3

    .line 194
    .local v3, output:[B
    if-eqz v3, :cond_3

    .line 195
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 196
    .end local v3           #output:[B
    :cond_9
    const/16 v4, 0x17

    if-ne p1, v4, :cond_b

    .line 197
    iget-boolean v4, p0, Lorg/theb/ssh/SecureShell;->mMetaState:Z

    if-eqz v4, :cond_a

    .line 198
    const/16 v4, 0x1b

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 199
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/theb/ssh/SecureShell;->mMetaState:Z

    goto :goto_1

    .line 201
    :cond_a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/theb/ssh/SecureShell;->mMetaState:Z

    goto :goto_1

    .line 205
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_2
.end method

.method public setWaiting(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "isWaiting"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 123
    iput-boolean p1, p0, Lorg/theb/ssh/SecureShell;->mIsWaiting:Z

    .line 124
    iput-object p2, p0, Lorg/theb/ssh/SecureShell;->mWaitingTitle:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lorg/theb/ssh/SecureShell;->mWaitingMessage:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lorg/theb/ssh/SecureShell;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/theb/ssh/SecureShell;->mUpdateWaiting:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
