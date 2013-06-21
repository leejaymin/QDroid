.class Lcom/virtuallyabstract/eve/ApiInfo$1;
.super Ljava/lang/Object;
.source "ApiInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virtuallyabstract/eve/ApiInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/virtuallyabstract/eve/ApiInfo;


# direct methods
.method constructor <init>(Lcom/virtuallyabstract/eve/ApiInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/virtuallyabstract/eve/ApiInfo$1;->this$0:Lcom/virtuallyabstract/eve/ApiInfo;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/virtuallyabstract/eve/ApiInfo$1;->this$0:Lcom/virtuallyabstract/eve/ApiInfo;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/ApiInfo;->populateApiDB()V

    return-void
.end method
