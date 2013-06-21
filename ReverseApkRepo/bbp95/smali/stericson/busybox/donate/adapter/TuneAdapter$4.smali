.class Lstericson/busybox/donate/adapter/TuneAdapter$4;
.super Ljava/lang/Object;
.source "TuneAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/adapter/TuneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

.field private final synthetic val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

.field private final synthetic val$item:Lstericson/busybox/donate/domain/Item;


# direct methods
.method constructor <init>(Lstericson/busybox/donate/adapter/TuneAdapter;Lstericson/busybox/donate/domain/Item;Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

    iput-object p2, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$item:Lstericson/busybox/donate/domain/Item;

    iput-object p3, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/high16 v4, -0x1

    const v3, -0xff0100

    const/4 v2, 0x0

    .line 271
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter;->all:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter;->access$1(Lstericson/busybox/donate/adapter/TuneAdapter;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 274
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v0, p2}, Lstericson/busybox/donate/domain/Item;->setOverwrite(Z)V

    .line 276
    if-eqz p2, :cond_1

    .line 278
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletState:Landroid/widget/TextView;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$11(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletState:Landroid/widget/TextView;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$11(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletState:Landroid/widget/TextView;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$11(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletState:Landroid/widget/TextView;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$11(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v0}, Lstericson/busybox/donate/domain/Item;->getRemove()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 293
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 294
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 299
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 300
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$4;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
