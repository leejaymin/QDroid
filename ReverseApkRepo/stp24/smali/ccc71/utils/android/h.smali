.class final Lccc71/utils/android/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/utils/android/g;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lccc71/utils/android/g;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/android/h;->a:Lccc71/utils/android/g;

    iput-object p2, p0, Lccc71/utils/android/h;->b:Ljava/lang/Runnable;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lccc71/utils/android/h;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lccc71/utils/android/h;->a:Lccc71/utils/android/g;

    invoke-virtual {v0}, Lccc71/utils/android/g;->a()V

    .line 108
    return-void

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    iget-object v1, p0, Lccc71/utils/android/h;->a:Lccc71/utils/android/g;

    invoke-virtual {v1}, Lccc71/utils/android/g;->a()V

    .line 107
    throw v0
.end method
