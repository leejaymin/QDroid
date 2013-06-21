.class Lcom/ui/LapseIt/project/SoundTrackView$4;
.super Ljava/lang/Object;
.source "SoundTrackView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/SoundTrackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/SoundTrackView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/SoundTrackView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/SoundTrackView$4;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 524
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$4;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->buttonText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$8(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/project/SoundTrackView$4;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    const v3, 0x7f0800d9

    invoke-virtual {v2, v3}, Lcom/ui/LapseIt/project/SoundTrackView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$4;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 530
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$4;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ui/LapseIt/project/SoundTrackView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 540
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$4;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->buttonText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$8(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/project/SoundTrackView$4;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    const v3, 0x7f0800da

    invoke-virtual {v2, v3}, Lcom/ui/LapseIt/project/SoundTrackView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 532
    sput-object v4, Lcom/ui/LapseIt/project/ProjectView;->audioUri:Landroid/net/Uri;

    .line 533
    sput-object v4, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    .line 534
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ui/LapseIt/project/ProjectView;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sget-object v2, Lcom/ui/LapseIt/project/ProjectView$TABS;->INFO:Lcom/ui/LapseIt/project/ProjectView$TABS;

    invoke-virtual {v2}, Lcom/ui/LapseIt/project/ProjectView$TABS;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 535
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ui/LapseIt/project/ProjectView;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sget-object v2, Lcom/ui/LapseIt/project/ProjectView$TABS;->SOUNDTRACK:Lcom/ui/LapseIt/project/ProjectView$TABS;

    invoke-virtual {v2}, Lcom/ui/LapseIt/project/ProjectView$TABS;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$4;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->buttonText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$8(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/project/SoundTrackView$4;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    const v3, 0x7f0800db

    invoke-virtual {v2, v3}, Lcom/ui/LapseIt/project/SoundTrackView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$4;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    const-class v2, Lcom/ui/LapseIt/ProVersionView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 538
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$4;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    invoke-virtual {v1, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
