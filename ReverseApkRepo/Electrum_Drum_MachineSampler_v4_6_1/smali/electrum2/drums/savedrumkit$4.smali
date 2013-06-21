.class Lelectrum2/drums/savedrumkit$4;
.super Ljava/lang/Object;
.source "savedrumkit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/savedrumkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/savedrumkit;


# direct methods
.method constructor <init>(Lelectrum2/drums/savedrumkit;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/savedrumkit$4;->this$0:Lelectrum2/drums/savedrumkit;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 412
    iget-object v0, p0, Lelectrum2/drums/savedrumkit$4;->this$0:Lelectrum2/drums/savedrumkit;

    invoke-virtual {v0}, Lelectrum2/drums/savedrumkit;->SendSave()V

    .line 415
    return-void
.end method
