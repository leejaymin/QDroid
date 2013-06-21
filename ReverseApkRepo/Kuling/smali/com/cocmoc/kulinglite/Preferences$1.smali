.class Lcom/cocmoc/kulinglite/Preferences$1;
.super Landroid/os/Handler;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocmoc/kulinglite/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Preferences;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Preferences;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences$1;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cocmoc/kulinglite/Preferences$1;)Lcom/cocmoc/kulinglite/Preferences;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences$1;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v3, "Kuling"

    .line 91
    const-string v1, "Kuling"

    const-string v1, "Preferences: Handler, handleMessage Start Message"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$1;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->register:Ljava/lang/String;
    invoke-static {v1}, Lcom/cocmoc/kulinglite/Preferences;->access$0(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$1;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->register:Ljava/lang/String;
    invoke-static {v1}, Lcom/cocmoc/kulinglite/Preferences;->access$0(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TESTVERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$1;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Lcom/cocmoc/kulinglite/Preferences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    .local v0, RegisterTextView:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    new-instance v1, Lcom/cocmoc/kulinglite/Preferences$1$1;

    invoke-direct {v1, p0}, Lcom/cocmoc/kulinglite/Preferences$1$1;-><init>(Lcom/cocmoc/kulinglite/Preferences$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .end local v0           #RegisterTextView:Landroid/widget/TextView;
    :cond_1
    const-string v1, "Kuling"

    const-string v1, "Preferences: Handler, handleMessage Stop RegisterCheck"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
