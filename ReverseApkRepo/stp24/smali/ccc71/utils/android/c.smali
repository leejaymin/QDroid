.class final Lccc71/utils/android/c;
.super Lccc71/utils/android/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/utils/android/a;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lccc71/utils/android/a;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/android/c;->a:Lccc71/utils/android/a;

    iput p2, p0, Lccc71/utils/android/c;->c:I

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccc71/utils/android/j;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lccc71/utils/android/c;->a:Lccc71/utils/android/a;

    invoke-static {v0}, Lccc71/utils/android/a;->a(Lccc71/utils/android/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    iget v0, p0, Lccc71/utils/android/c;->c:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 179
    iget-object v0, p0, Lccc71/utils/android/c;->a:Lccc71/utils/android/a;

    iget-object v1, p0, Lccc71/utils/android/c;->a:Lccc71/utils/android/a;

    iget-object v2, p0, Lccc71/utils/android/c;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lccc71/utils/android/a;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/utils/android/a;->b(Lccc71/utils/android/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
