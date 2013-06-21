.class Lcom/dakkhin/android/bhadram/EditEntry$2;
.super Ljava/lang/Object;
.source "EditEntry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dakkhin/android/bhadram/EditEntry;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dakkhin/android/bhadram/EditEntry;


# direct methods
.method constructor <init>(Lcom/dakkhin/android/bhadram/EditEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/EditEntry$2;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry$2;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dakkhin/android/bhadram/EditEntry;->setResult(I)V

    .line 127
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry$2;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    invoke-virtual {v0}, Lcom/dakkhin/android/bhadram/EditEntry;->finish()V

    .line 128
    return-void
.end method
