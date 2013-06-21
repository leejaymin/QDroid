.class Lelectrum2/drums/drumsample$5;
.super Ljava/lang/Object;
.source "drumsample.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/drumsample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/drumsample;


# direct methods
.method constructor <init>(Lelectrum2/drums/drumsample;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/drumsample$5;->this$0:Lelectrum2/drums/drumsample;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 483
    sget-object v1, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    .line 485
    .local v1, Test:Ljava/lang/String;
    move-object v3, v1

    .line 486
    .local v3, testend:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 490
    sget-object v4, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 495
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 496
    .local v0, SlashPos:I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, Test2:Ljava/lang/String;
    sput-object v2, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    .line 501
    iget-object v4, p0, Lelectrum2/drums/drumsample$5;->this$0:Lelectrum2/drums/drumsample;

    iget-object v4, v4, Lelectrum2/drums/drumsample;->selectedname:Landroid/widget/TextView;

    sget-object v5, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v4, p0, Lelectrum2/drums/drumsample$5;->this$0:Lelectrum2/drums/drumsample;

    #calls: Lelectrum2/drums/drumsample;->ShowSampleFiles()V
    invoke-static {v4}, Lelectrum2/drums/drumsample;->access$0(Lelectrum2/drums/drumsample;)V

    .line 511
    .end local v0           #SlashPos:I
    .end local v2           #Test2:Ljava/lang/String;
    :cond_0
    return-void
.end method
