.class Lelectrum2/drums/browsefolder$3;
.super Ljava/lang/Object;
.source "browsefolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/browsefolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/browsefolder;


# direct methods
.method constructor <init>(Lelectrum2/drums/browsefolder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/browsefolder$3;->this$0:Lelectrum2/drums/browsefolder;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 453
    iget-object v0, p0, Lelectrum2/drums/browsefolder$3;->this$0:Lelectrum2/drums/browsefolder;

    #calls: Lelectrum2/drums/browsefolder;->BrowseUp()V
    invoke-static {v0}, Lelectrum2/drums/browsefolder;->access$1(Lelectrum2/drums/browsefolder;)V

    .line 458
    return-void
.end method
