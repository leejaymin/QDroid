.class Lkr/co/medinbiz/view/DialogGroup$1;
.super Ljava/lang/Object;
.source "DialogGroup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/view/DialogGroup;->activityFinish(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/view/DialogGroup$1;->val$mContext:Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 19
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 20
    iget-object v0, p0, Lkr/co/medinbiz/view/DialogGroup$1;->val$mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 21
    return-void
.end method
