.class Lcom/devsmart/android/ui/HorizontialListView$3;
.super Ljava/lang/Object;
.source "HorizontialListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devsmart/android/ui/HorizontialListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devsmart/android/ui/HorizontialListView;


# direct methods
.method constructor <init>(Lcom/devsmart/android/ui/HorizontialListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontialListView$3;->this$0:Lcom/devsmart/android/ui/HorizontialListView;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView$3;->this$0:Lcom/devsmart/android/ui/HorizontialListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontialListView;->requestLayout()V

    .line 194
    return-void
.end method
