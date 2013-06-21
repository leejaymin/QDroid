.class Lcom/ui/LapseIt/project/EffectsView$1;
.super Ljava/lang/Object;
.source "EffectsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/EffectsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/EffectsView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/EffectsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/EffectsView$1;->this$0:Lcom/ui/LapseIt/project/EffectsView;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, 0x7f0b0012

    const v3, 0x7f0b0010

    const/4 v2, 0x0

    .line 162
    sget-boolean v0, Lcom/ui/LapseIt/project/ProjectPreview;->isPreviewning:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Can\'t change effects while playing preview"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    .end local p1
    :goto_0
    return-void

    .line 166
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/EffectsView$1;->this$0:Lcom/ui/LapseIt/project/EffectsView;

    #getter for: Lcom/ui/LapseIt/project/EffectsView;->selectedEffectItem:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ui/LapseIt/project/EffectsView;->access$0(Lcom/ui/LapseIt/project/EffectsView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/ui/LapseIt/project/EffectsView$1;->this$0:Lcom/ui/LapseIt/project/EffectsView;

    #getter for: Lcom/ui/LapseIt/project/EffectsView;->selectedEffectItem:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ui/LapseIt/project/EffectsView;->access$0(Lcom/ui/LapseIt/project/EffectsView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v0, p0, Lcom/ui/LapseIt/project/EffectsView$1;->this$0:Lcom/ui/LapseIt/project/EffectsView;

    #getter for: Lcom/ui/LapseIt/project/EffectsView;->selectedEffectItem:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ui/LapseIt/project/EffectsView;->access$0(Lcom/ui/LapseIt/project/EffectsView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/ui/LapseIt/project/EffectsView$1;->this$0:Lcom/ui/LapseIt/project/EffectsView;

    check-cast p1, Landroid/widget/RelativeLayout;

    .end local p1
    #setter for: Lcom/ui/LapseIt/project/EffectsView;->selectedEffectItem:Landroid/widget/RelativeLayout;
    invoke-static {v0, p1}, Lcom/ui/LapseIt/project/EffectsView;->access$1(Lcom/ui/LapseIt/project/EffectsView;Landroid/widget/RelativeLayout;)V

    .line 174
    iget-object v0, p0, Lcom/ui/LapseIt/project/EffectsView$1;->this$0:Lcom/ui/LapseIt/project/EffectsView;

    #getter for: Lcom/ui/LapseIt/project/EffectsView;->selectedEffectItem:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ui/LapseIt/project/EffectsView;->access$0(Lcom/ui/LapseIt/project/EffectsView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui/utils/ImageUtils$EFFECTS;

    sput-object v0, Lcom/ui/LapseIt/project/EffectsView;->currentEffect:Lui/utils/ImageUtils$EFFECTS;

    .line 176
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->drawBitmap()V

    goto :goto_0
.end method
