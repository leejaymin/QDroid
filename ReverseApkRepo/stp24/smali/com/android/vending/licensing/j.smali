.class final Lcom/android/vending/licensing/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/vending/licensing/i;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/i;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/vending/licensing/j;->a:Lcom/android/vending/licensing/i;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/vending/licensing/j;->a:Lcom/android/vending/licensing/i;

    invoke-static {v0}, Lcom/android/vending/licensing/i;->c(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/h;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/licensing/j;->a:Lcom/android/vending/licensing/i;

    invoke-static {v1}, Lcom/android/vending/licensing/i;->a(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/licensing/h;->a(Lcom/android/vending/licensing/h;Lcom/android/vending/licensing/n;)V

    .line 196
    iget-object v0, p0, Lcom/android/vending/licensing/j;->a:Lcom/android/vending/licensing/i;

    invoke-static {v0}, Lcom/android/vending/licensing/i;->c(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/h;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/licensing/j;->a:Lcom/android/vending/licensing/i;

    invoke-static {v1}, Lcom/android/vending/licensing/i;->a(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/licensing/h;->b(Lcom/android/vending/licensing/h;Lcom/android/vending/licensing/n;)V

    .line 197
    return-void
.end method
