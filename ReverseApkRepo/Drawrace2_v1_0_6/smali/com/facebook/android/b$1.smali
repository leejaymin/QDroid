.class final Lcom/facebook/android/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/android/b$a;


# direct methods
.method constructor <init>(Lcom/facebook/android/b$a;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/facebook/android/b$1;->a:Lcom/facebook/android/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 583
    iget-object v0, p0, Lcom/facebook/android/b$1;->a:Lcom/facebook/android/b$a;

    invoke-interface {v0}, Lcom/facebook/android/b$a;->a()V

    .line 584
    return-void
.end method
