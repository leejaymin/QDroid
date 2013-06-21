.class final Lccc71/utils/billing/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/utils/billing/t;

.field private final synthetic b:Lccc71/utils/billing/d;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:J

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccc71/utils/billing/t;Lccc71/utils/billing/d;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/billing/u;->a:Lccc71/utils/billing/t;

    iput-object p2, p0, Lccc71/utils/billing/u;->b:Lccc71/utils/billing/d;

    iput-object p3, p0, Lccc71/utils/billing/u;->c:Ljava/lang/String;

    iput p4, p0, Lccc71/utils/billing/u;->d:I

    iput-wide p5, p0, Lccc71/utils/billing/u;->e:J

    iput-object p7, p0, Lccc71/utils/billing/u;->f:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lccc71/utils/billing/u;->a:Lccc71/utils/billing/t;

    .line 110
    iget-object v1, p0, Lccc71/utils/billing/u;->b:Lccc71/utils/billing/d;

    iget-object v2, p0, Lccc71/utils/billing/u;->c:Ljava/lang/String;

    iget v3, p0, Lccc71/utils/billing/u;->d:I

    iget-wide v3, p0, Lccc71/utils/billing/u;->e:J

    iget-object v3, p0, Lccc71/utils/billing/u;->f:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1, v2}, Lccc71/utils/billing/t;->a(Lccc71/utils/billing/d;Ljava/lang/String;)V

    .line 111
    return-void
.end method
