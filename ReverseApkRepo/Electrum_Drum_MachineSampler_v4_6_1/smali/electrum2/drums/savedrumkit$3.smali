.class Lelectrum2/drums/savedrumkit$3;
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
    iput-object p1, p0, Lelectrum2/drums/savedrumkit$3;->this$0:Lelectrum2/drums/savedrumkit;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 291
    iget-object v0, p0, Lelectrum2/drums/savedrumkit$3;->this$0:Lelectrum2/drums/savedrumkit;

    #calls: Lelectrum2/drums/savedrumkit;->BrowseUp()V
    invoke-static {v0}, Lelectrum2/drums/savedrumkit;->access$1(Lelectrum2/drums/savedrumkit;)V

    .line 297
    return-void
.end method
