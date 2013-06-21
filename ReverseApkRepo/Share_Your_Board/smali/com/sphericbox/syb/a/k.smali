.class public Lcom/sphericbox/syb/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sphericbox/syb/a/h;


# instance fields
.field private final ai:Lcom/sphericbox/syb/a/o;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/a/o;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/sphericbox/syb/a/k;->ai:Lcom/sphericbox/syb/a/o;

    .line 15
    return-void
.end method

.method private a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;[ILcom/sphericbox/syb/a/l;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/sphericbox/syb/a/x;

    invoke-direct {v0, p2, p3}, Lcom/sphericbox/syb/a/x;-><init>([ILcom/sphericbox/syb/a/l;)V

    .line 29
    invoke-virtual {v0, p1}, Lcom/sphericbox/syb/a/x;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)V

    .line 31
    new-instance v0, Lcom/sphericbox/syb/a/y;

    invoke-direct {v0, p2, p3}, Lcom/sphericbox/syb/a/y;-><init>([ILcom/sphericbox/syb/a/l;)V

    .line 32
    invoke-virtual {v0}, Lcom/sphericbox/syb/a/y;->I()V

    .line 34
    invoke-virtual {v0}, Lcom/sphericbox/syb/a/y;->E()Ljava/util/ArrayList;

    move-result-object v3

    .line 35
    invoke-virtual {v0}, Lcom/sphericbox/syb/a/y;->H()Ljava/util/ArrayList;

    move-result-object v2

    .line 36
    invoke-virtual {v0}, Lcom/sphericbox/syb/a/y;->F()Ljava/util/ArrayList;

    move-result-object v4

    .line 37
    invoke-virtual {v0}, Lcom/sphericbox/syb/a/y;->G()Ljava/util/ArrayList;

    move-result-object v5

    .line 40
    new-instance v1, Lcom/sphericbox/syb/a/c;

    invoke-direct {v1, p3}, Lcom/sphericbox/syb/a/c;-><init>(Lcom/sphericbox/syb/a/l;)V

    .line 41
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sphericbox/syb/a/c;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 43
    invoke-virtual {v1}, Lcom/sphericbox/syb/a/c;->a()Lcom/sphericbox/syb/a/n;

    move-result-object v0

    .line 44
    invoke-virtual {v1}, Lcom/sphericbox/syb/a/c;->b()Lcom/sphericbox/syb/a/n;

    move-result-object v1

    .line 46
    iget-object v6, p0, Lcom/sphericbox/syb/a/k;->ai:Lcom/sphericbox/syb/a/o;

    invoke-static/range {v0 .. v6}, Lcom/sphericbox/syb/a/d;->a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sphericbox/syb/a/o;)V

    .line 47
    return-void
.end method


# virtual methods
.method public a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;[I[ILcom/sphericbox/syb/a/l;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p4}, Lcom/sphericbox/syb/a/k;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;[ILcom/sphericbox/syb/a/l;)V

    .line 23
    return-void
.end method
