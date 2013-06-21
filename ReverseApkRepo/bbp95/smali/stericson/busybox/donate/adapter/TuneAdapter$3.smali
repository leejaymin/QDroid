.class Lstericson/busybox/donate/adapter/TuneAdapter$3;
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
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$3;->this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

    iput-object p2, p0, Lstericson/busybox/donate/adapter/TuneAdapter$3;->val$item:Lstericson/busybox/donate/domain/Item;

    iput-object p3, p0, Lstericson/busybox/donate/adapter/TuneAdapter$3;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 249
    iget-object v1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$3;->val$item:Lstericson/busybox/donate/domain/Item;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lstericson/busybox/donate/domain/Item;->setRemove(Z)V

    .line 251
    if-eqz p2, :cond_1

    .line 253
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$3;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 254
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$3;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 261
    :goto_1
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$3;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 259
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$3;->val$holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_1
.end method
