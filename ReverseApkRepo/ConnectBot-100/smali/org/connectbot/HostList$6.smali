.class final Lorg/connectbot/HostList$6;
.super Ljava/lang/Object;
.source "HostList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostList;

.field private final synthetic val$hostmask:Ljava/util/regex/Pattern;

.field private final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/connectbot/HostList;Landroid/widget/TextView;Ljava/util/regex/Pattern;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostList$6;->this$0:Lorg/connectbot/HostList;

    iput-object p2, p0, Lorg/connectbot/HostList$6;->val$text:Landroid/widget/TextView;

    iput-object p3, p0, Lorg/connectbot/HostList$6;->val$hostmask:Ljava/util/regex/Pattern;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 257
    const/16 v0, 0x42

    if-ne p2, v0, :cond_3

    .line 260
    iget-object v0, p0, Lorg/connectbot/HostList$6;->val$text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/connectbot/HostList$6;->val$hostmask:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/connectbot/HostList$6;->val$text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lorg/connectbot/HostList$6;->val$text:Landroid/widget/TextView;

    const-string v1, "Use the format \'username@hostname:port\'"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 266
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_1
    const-string v0, "ssh://%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/connectbot/HostList$6;->val$text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 271
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, username:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, hostname:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/Uri;->getPort()I

    move-result v5

    .line 274
    .local v5, port:I
    const/4 v0, -0x1

    if-ne v5, v0, :cond_2

    const/16 v5, 0x16

    .line 276
    :cond_2
    const-string v0, "%s@%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, nickname:Ljava/lang/String;
    iget-object v0, p0, Lorg/connectbot/HostList$6;->this$0:Lorg/connectbot/HostList;

    iget-object v0, v0, Lorg/connectbot/HostList;->hostdb:Lorg/connectbot/util/HostDatabase;

    const/4 v1, 0x0

    const-string v6, "gray"

    invoke-virtual/range {v0 .. v6}, Lorg/connectbot/util/HostDatabase;->createHost(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    .line 279
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lorg/connectbot/HostList$6;->this$0:Lorg/connectbot/HostList;

    const-class v1, Lorg/connectbot/Console;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "ssh://%s@%s:%s/#%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v1, v6

    const/4 v3, 0x1

    aput-object v4, v1, v3

    .end local v3           #username:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .end local v4           #hostname:Ljava/lang/String;
    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 281
    iget-object v0, p0, Lorg/connectbot/HostList$6;->this$0:Lorg/connectbot/HostList;

    invoke-virtual {v0, v7}, Lorg/connectbot/HostList;->startActivity(Landroid/content/Intent;)V

    .line 291
    .end local v8           #uri:Landroid/net/Uri;
    .end local v5           #port:I
    .end local v2           #nickname:Ljava/lang/String;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
