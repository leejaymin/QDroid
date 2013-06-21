.class Lelectrum2/drums/browsefolder$2;
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
    iput-object p1, p0, Lelectrum2/drums/browsefolder$2;->this$0:Lelectrum2/drums/browsefolder;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lelectrum2/drums/browsefolder$2;->this$0:Lelectrum2/drums/browsefolder;

    const-class v2, Lelectrum2/drums/foldercreate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lelectrum2/drums/browsefolder$2;->this$0:Lelectrum2/drums/browsefolder;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lelectrum2/drums/browsefolder;->startActivityForResult(Landroid/content/Intent;I)V

    .line 157
    return-void
.end method
