.class Lorg/connectbot/TerminalView$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/TerminalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/TerminalView;


# direct methods
.method private constructor <init>(Lorg/connectbot/TerminalView;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/connectbot/TerminalView;Lorg/connectbot/TerminalView$AccessibilityEventSender;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lorg/connectbot/TerminalView$AccessibilityEventSender;-><init>(Lorg/connectbot/TerminalView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 343
    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mAccessibilityLock:[Ljava/lang/Object;
    invoke-static {v2}, Lorg/connectbot/TerminalView;->access$0(Lorg/connectbot/TerminalView;)[Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 344
    :try_start_0
    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mCodeMatcher:Ljava/util/regex/Matcher;
    invoke-static {v2}, Lorg/connectbot/TerminalView;->access$1(Lorg/connectbot/TerminalView;)Ljava/util/regex/Matcher;

    move-result-object v2

    if-nez v2, :cond_1

    .line 345
    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    iget-object v5, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mControlCodes:Ljava/util/regex/Pattern;
    invoke-static {v5}, Lorg/connectbot/TerminalView;->access$2(Lorg/connectbot/TerminalView;)Ljava/util/regex/Pattern;

    move-result-object v5

    iget-object v6, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v6}, Lorg/connectbot/TerminalView;->access$3(Lorg/connectbot/TerminalView;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    #setter for: Lorg/connectbot/TerminalView;->mCodeMatcher:Ljava/util/regex/Matcher;
    invoke-static {v2, v5}, Lorg/connectbot/TerminalView;->access$4(Lorg/connectbot/TerminalView;Ljava/util/regex/Matcher;)V

    .line 351
    :goto_0
    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    new-instance v5, Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mCodeMatcher:Ljava/util/regex/Matcher;
    invoke-static {v6}, Lorg/connectbot/TerminalView;->access$1(Lorg/connectbot/TerminalView;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #setter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v2, v5}, Lorg/connectbot/TerminalView;->access$5(Lorg/connectbot/TerminalView;Ljava/lang/StringBuffer;)V

    .line 354
    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lorg/connectbot/TerminalView;->access$3(Lorg/connectbot/TerminalView;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "\\x08\\x1b\\[K"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 355
    .local v1, i:I
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 361
    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lorg/connectbot/TerminalView;->access$3(Lorg/connectbot/TerminalView;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 363
    const/16 v2, 0x10

    .line 362
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 364
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 365
    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lorg/connectbot/TerminalView;->access$3(Lorg/connectbot/TerminalView;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 366
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v3}, Lorg/connectbot/TerminalView;->access$3(Lorg/connectbot/TerminalView;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    invoke-virtual {v2, v0}, Lorg/connectbot/TerminalView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 369
    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lorg/connectbot/TerminalView;->access$3(Lorg/connectbot/TerminalView;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 343
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    monitor-exit v4

    .line 372
    return-void

    .line 347
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mCodeMatcher:Ljava/util/regex/Matcher;
    invoke-static {v2}, Lorg/connectbot/TerminalView;->access$1(Lorg/connectbot/TerminalView;)Ljava/util/regex/Matcher;

    move-result-object v2

    iget-object v5, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v5}, Lorg/connectbot/TerminalView;->access$3(Lorg/connectbot/TerminalView;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 356
    .restart local v1       #i:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lorg/connectbot/TerminalView;->access$3(Lorg/connectbot/TerminalView;)Ljava/lang/StringBuffer;

    move-result-object v6

    if-nez v1, :cond_3

    move v2, v3

    .line 357
    :goto_2
    const-string v7, "\\x08\\x1b\\[K"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    const-string v8, ""

    .line 356
    invoke-virtual {v6, v2, v7, v8}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    #setter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v5, v2}, Lorg/connectbot/TerminalView;->access$5(Lorg/connectbot/TerminalView;Ljava/lang/StringBuffer;)V

    .line 358
    iget-object v2, p0, Lorg/connectbot/TerminalView$AccessibilityEventSender;->this$0:Lorg/connectbot/TerminalView;

    #getter for: Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lorg/connectbot/TerminalView;->access$3(Lorg/connectbot/TerminalView;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "\\x08\\x1b\\[K"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_1

    .line 356
    :cond_3
    add-int/lit8 v2, v1, -0x1

    goto :goto_2
.end method
