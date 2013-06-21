.class Lcom/fleapapa/helper/CallUes$2$1;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fleapapa/helper/CallPapa$UE;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/CallUes$2;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$2$1;->this$1:Lcom/fleapapa/helper/CallUes$2;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fleapapa/helper/CallPapa$UE;Lcom/fleapapa/helper/CallPapa$UE;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 87
    iget v0, p1, Lcom/fleapapa/helper/CallPapa$UE;->dist:I

    iget v1, p2, Lcom/fleapapa/helper/CallPapa$UE;->dist:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/fleapapa/helper/CallPapa$UE;

    check-cast p2, Lcom/fleapapa/helper/CallPapa$UE;

    invoke-virtual {p0, p1, p2}, Lcom/fleapapa/helper/CallUes$2$1;->compare(Lcom/fleapapa/helper/CallPapa$UE;Lcom/fleapapa/helper/CallPapa$UE;)I

    move-result v0

    return v0
.end method
