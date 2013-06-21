.class Lcom/battlesheep/marblebox/activities/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/battlesheep/marblebox/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/battlesheep/marblebox/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/battlesheep/marblebox/activities/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/MainActivity$1;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 140
    iget-object v4, p0, Lcom/battlesheep/marblebox/activities/MainActivity$1;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    invoke-virtual {v4}, Lcom/battlesheep/marblebox/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040001

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 141
    .local v1, fadeOut:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/battlesheep/marblebox/activities/MainActivity$1;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 142
    .local v3, mainLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 143
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v4, p0, Lcom/battlesheep/marblebox/activities/MainActivity$1;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    invoke-virtual {v4}, Lcom/battlesheep/marblebox/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f04

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 148
    .local v0, fadeIn:Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 149
    iget-object v4, p0, Lcom/battlesheep/marblebox/activities/MainActivity$1;->this$0:Lcom/battlesheep/marblebox/activities/MainActivity;

    const v5, 0x7f08001a

    invoke-virtual {v4, v5}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 150
    .local v2, levelLayout:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 152
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    return-void
.end method
