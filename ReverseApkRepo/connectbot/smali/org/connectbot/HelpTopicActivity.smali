.class public Lorg/connectbot/HelpTopicActivity;
.super Landroid/app/Activity;
.source "HelpTopicActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lorg/connectbot/HelpTopicActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lorg/connectbot/HelpTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, topic:Ljava/lang/String;
    const-string v2, "%s: %s - %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 41
    invoke-virtual {p0}, Lorg/connectbot/HelpTopicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f08

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 42
    invoke-virtual {p0}, Lorg/connectbot/HelpTopicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 43
    aput-object v1, v3, v4

    .line 40
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/connectbot/HelpTopicActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    const v2, 0x7f0b001c

    invoke-virtual {p0, v2}, Lorg/connectbot/HelpTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/connectbot/util/HelpTopicView;

    .line 47
    .local v0, helpTopic:Lorg/connectbot/util/HelpTopicView;
    invoke-virtual {v0, v1}, Lorg/connectbot/util/HelpTopicView;->setTopic(Ljava/lang/String;)Lorg/connectbot/util/HelpTopicView;

    .line 48
    return-void
.end method
