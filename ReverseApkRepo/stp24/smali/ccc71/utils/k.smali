.class final Lccc71/utils/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/utils/j;

.field private final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lccc71/utils/j;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/k;->a:Lccc71/utils/j;

    iput-object p2, p0, Lccc71/utils/k;->b:Ljava/io/File;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lccc71/utils/k;->a:Lccc71/utils/j;

    invoke-static {v0}, Lccc71/utils/j;->a(Lccc71/utils/j;)Lccc71/utils/h;

    move-result-object v0

    iget-object v1, p0, Lccc71/utils/k;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lccc71/utils/h;->a(Lccc71/utils/h;Ljava/io/File;)V

    .line 159
    return-void
.end method
