.class Lorg/connectbot/TerminalView$AccessibilityStateTester;
.super Landroid/os/AsyncTask;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/TerminalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityStateTester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/TerminalView;


# direct methods
.method private constructor <init>(Lorg/connectbot/TerminalView;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/connectbot/TerminalView;Lorg/connectbot/TerminalView$AccessibilityStateTester;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lorg/connectbot/TerminalView$AccessibilityStateTester;-><init>(Lorg/connectbot/TerminalView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 15
    .parameter "params"

    .prologue
    .line 382
    iget-object v1, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->context:Landroid/content/Context;
    invoke-static {v1}, Lorg/connectbot/TerminalView;->access$6(Lorg/connectbot/TerminalView;)Landroid/content/Context;

    move-result-object v1

    .line 383
    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 382
    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    .line 384
    .local v7, accessibility:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 435
    :goto_0
    return-object v1

    .line 392
    :cond_0
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v12, screenReaderIntent:Landroid/content/Intent;
    const-string v1, "android.accessibilityservice.category.FEEDBACK_SPOKEN"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->context:Landroid/content/Context;
    invoke-static {v1}, Lorg/connectbot/TerminalView;->access$6(Lorg/connectbot/TerminalView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 397
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->context:Landroid/content/Context;
    invoke-static {v1}, Lorg/connectbot/TerminalView;->access$6(Lorg/connectbot/TerminalView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 398
    const/4 v2, 0x0

    .line 397
    invoke-virtual {v1, v12, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 400
    .local v13, screenReaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v9, 0x0

    .line 402
    .local v9, foundScreenReader:Z
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    .line 403
    .local v6, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-lt v10, v6, :cond_2

    .line 431
    :goto_2
    if-eqz v9, :cond_1

    .line 432
    iget-object v1, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    const-string v2, "\\x1b\\[K[^m]+[m|:]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    #setter for: Lorg/connectbot/TerminalView;->mControlCodes:Ljava/util/regex/Pattern;
    invoke-static {v1, v2}, Lorg/connectbot/TerminalView;->access$7(Lorg/connectbot/TerminalView;Ljava/util/regex/Pattern;)V

    .line 435
    :cond_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 404
    :cond_2
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 412
    .local v11, screenReader:Landroid/content/pm/ResolveInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 413
    const-string v2, ".providers.StatusProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 413
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 411
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 414
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 420
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 422
    .local v14, status:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 424
    const/4 v1, 0x1

    if-ne v14, v1, :cond_3

    .line 425
    const/4 v9, 0x1

    .line 426
    goto :goto_2

    .line 403
    .end local v14           #status:I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/connectbot/TerminalView$AccessibilityStateTester;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 440
    iget-object v0, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    #setter for: Lorg/connectbot/TerminalView;->mAccessibilityActive:Z
    invoke-static {v0, v1}, Lorg/connectbot/TerminalView;->access$8(Lorg/connectbot/TerminalView;Z)V

    .line 442
    iget-object v0, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    const/4 v1, 0x1

    #setter for: Lorg/connectbot/TerminalView;->mAccessibilityInitialized:Z
    invoke-static {v0, v1}, Lorg/connectbot/TerminalView;->access$9(Lorg/connectbot/TerminalView;Z)V

    .line 444
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    new-instance v1, Lorg/connectbot/TerminalView$AccessibilityEventSender;

    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    invoke-direct {v1, v2, v3}, Lorg/connectbot/TerminalView$AccessibilityEventSender;-><init>(Lorg/connectbot/TerminalView;Lorg/connectbot/TerminalView$AccessibilityEventSender;)V

    #setter for: Lorg/connectbot/TerminalView;->mEventSender:Lorg/connectbot/TerminalView$AccessibilityEventSender;
    invoke-static {v0, v1}, Lorg/connectbot/TerminalView;->access$10(Lorg/connectbot/TerminalView;Lorg/connectbot/TerminalView$AccessibilityEventSender;)V

    .line 446
    iget-object v0, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    iget-object v1, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mEventSender:Lorg/connectbot/TerminalView$AccessibilityEventSender;
    invoke-static {v1}, Lorg/connectbot/TerminalView;->access$11(Lorg/connectbot/TerminalView;)Lorg/connectbot/TerminalView$AccessibilityEventSender;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lorg/connectbot/TerminalView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/connectbot/TerminalView$AccessibilityStateTester;->this$0:Lorg/connectbot/TerminalView;

    #setter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0, v3}, Lorg/connectbot/TerminalView;->access$5(Lorg/connectbot/TerminalView;Ljava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/connectbot/TerminalView$AccessibilityStateTester;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
