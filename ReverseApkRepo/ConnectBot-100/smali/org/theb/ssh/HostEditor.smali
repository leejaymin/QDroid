.class public Lorg/theb/ssh/HostEditor;
.super Landroid/app/Activity;
.source "HostEditor.java"


# static fields
.field public static final EDIT_HOST_ACTION:Ljava/lang/String; = "org.theb.ssh.action.EDIT_HOST"

.field private static final INDEX_EMULATION:I = 0x5

.field private static final INDEX_HOSTNAME:I = 0x2

.field private static final INDEX_NICKNAME:I = 0x1

.field private static final INDEX_PORT:I = 0x4

.field private static final INDEX_SCROLLBACK:I = 0x6

.field private static final INDEX_USERNAME:I = 0x3

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final STATE_EDIT:I = 0x0

.field private static final STATE_INSERT:I = 0x1


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mEmulation:Landroid/widget/Spinner;

.field private mHostname:Landroid/widget/EditText;

.field private mNickname:Landroid/widget/EditText;

.field private mPort:Landroid/widget/EditText;

.field private mScrollback:Landroid/widget/EditText;

.field private mState:I

.field private mURI:Landroid/net/Uri;

.field private mUsername:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 39
    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hostname"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 40
    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "emulation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 41
    const-string v2, "scrollback"

    aput-object v2, v0, v1

    .line 38
    sput-object v0, Lorg/theb/ssh/HostEditor;->PROJECTION:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final cancelEdit()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 157
    iget v0, p0, Lorg/theb/ssh/HostEditor;->mState:I

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget v0, p0, Lorg/theb/ssh/HostEditor;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    invoke-direct {p0}, Lorg/theb/ssh/HostEditor;->deleteHost()V

    goto :goto_0
.end method

.method private final deleteHost()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, ""

    .line 167
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mHostname:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mUsername:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mPort:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p0}, Lorg/theb/ssh/HostEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/theb/ssh/HostEditor;->mURI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 173
    iput-object v2, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedValues"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lorg/theb/ssh/HostEditor;->setContentView(I)V

    .line 66
    const v2, 0x7f090005

    invoke-virtual {p0, v2}, Lorg/theb/ssh/HostEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lorg/theb/ssh/HostEditor;->mNickname:Landroid/widget/EditText;

    .line 67
    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Lorg/theb/ssh/HostEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lorg/theb/ssh/HostEditor;->mHostname:Landroid/widget/EditText;

    .line 68
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lorg/theb/ssh/HostEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lorg/theb/ssh/HostEditor;->mUsername:Landroid/widget/EditText;

    .line 69
    const v2, 0x7f090008

    invoke-virtual {p0, v2}, Lorg/theb/ssh/HostEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lorg/theb/ssh/HostEditor;->mPort:Landroid/widget/EditText;

    .line 70
    const v2, 0x7f090009

    invoke-virtual {p0, v2}, Lorg/theb/ssh/HostEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lorg/theb/ssh/HostEditor;->mEmulation:Landroid/widget/Spinner;

    .line 71
    const v2, 0x7f09000a

    invoke-virtual {p0, v2}, Lorg/theb/ssh/HostEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lorg/theb/ssh/HostEditor;->mScrollback:Landroid/widget/EditText;

    .line 74
    invoke-virtual {p0}, Lorg/theb/ssh/HostEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 75
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    const/4 v2, 0x1

    iput v2, p0, Lorg/theb/ssh/HostEditor;->mState:I

    .line 79
    invoke-virtual {p0}, Lorg/theb/ssh/HostEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lorg/theb/ssh/HostEditor;->mURI:Landroid/net/Uri;

    .line 84
    iget-object v2, p0, Lorg/theb/ssh/HostEditor;->mURI:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 85
    const-string v2, "SSH"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to insert new host into "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/theb/ssh/HostEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lorg/theb/ssh/HostEditor;->finish()V

    .line 104
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lorg/theb/ssh/HostEditor;->mURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lorg/theb/ssh/HostEditor;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 96
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lorg/theb/ssh/HostEditor;->mState:I

    .line 99
    invoke-virtual {p0}, Lorg/theb/ssh/HostEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lorg/theb/ssh/HostEditor;->mURI:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 129
    iget-object v4, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 130
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "nickname"

    iget-object v5, p0, Lorg/theb/ssh/HostEditor;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v4, "hostname"

    iget-object v5, p0, Lorg/theb/ssh/HostEditor;->mHostname:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v4, "username"

    iget-object v5, p0, Lorg/theb/ssh/HostEditor;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :try_start_0
    iget-object v4, p0, Lorg/theb/ssh/HostEditor;->mPort:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    .local v1, port:I
    :goto_0
    const-string v4, "port"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    :try_start_1
    iget-object v4, p0, Lorg/theb/ssh/HostEditor;->mScrollback:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 149
    .local v2, scrollback:I
    :goto_1
    const-string v4, "scrollback"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    invoke-virtual {p0}, Lorg/theb/ssh/HostEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lorg/theb/ssh/HostEditor;->mURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 153
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v1           #port:I
    .end local v2           #scrollback:I
    :cond_0
    return-void

    .line 138
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 139
    .local v0, e:Ljava/lang/Exception;
    const/16 v1, 0x16

    .restart local v1       #port:I
    goto :goto_0

    .line 146
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 147
    .restart local v0       #e:Ljava/lang/Exception;
    const/16 v2, 0x3e8

    .restart local v2       #scrollback:I
    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mNickname:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mHostname:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mPort:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lorg/theb/ssh/HostEditor;->mScrollback:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/theb/ssh/HostEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    return-void
.end method
