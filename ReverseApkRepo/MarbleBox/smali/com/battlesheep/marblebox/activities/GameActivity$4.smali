.class Lcom/battlesheep/marblebox/activities/GameActivity$4;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/battlesheep/marblebox/activities/GameActivity;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/battlesheep/marblebox/activities/GameActivity;


# direct methods
.method constructor <init>(Lcom/battlesheep/marblebox/activities/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 338
    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$0(Lcom/battlesheep/marblebox/activities/GameActivity;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    iget-object v3, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    invoke-virtual {v3}, Lcom/battlesheep/marblebox/activities/GameActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/GameActivity;->mToastMsg:Ljava/lang/String;
    invoke-static {v4}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$2(Lcom/battlesheep/marblebox/activities/GameActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$3(Lcom/battlesheep/marblebox/activities/GameActivity;Landroid/widget/Toast;)V

    .line 342
    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$0(Lcom/battlesheep/marblebox/activities/GameActivity;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 343
    .local v1, msgView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/GameActivity;->mTypeface:Landroid/graphics/Typeface;
    invoke-static {v2}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$4(Lcom/battlesheep/marblebox/activities/GameActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 350
    .end local v1           #msgView:Landroid/widget/TextView;
    :goto_0
    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Lcom/battlesheep/marblebox/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, adView:Landroid/view/View;
    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$0(Lcom/battlesheep/marblebox/activities/GameActivity;)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 354
    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$0(Lcom/battlesheep/marblebox/activities/GameActivity;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 355
    return-void

    .line 345
    .end local v0           #adView:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$0(Lcom/battlesheep/marblebox/activities/GameActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/battlesheep/marblebox/activities/GameActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/GameActivity;->mToastMsg:Ljava/lang/String;
    invoke-static {v3}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$2(Lcom/battlesheep/marblebox/activities/GameActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
