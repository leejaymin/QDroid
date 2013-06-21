.class final Lccc71/bmw/pro/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/bmw/pro/a;

.field private final synthetic b:Landroid/content/Intent;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/bmw/pro/a;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/pro/b;->a:Lccc71/bmw/pro/a;

    iput-object p2, p0, Lccc71/bmw/pro/b;->b:Landroid/content/Intent;

    iput-object p3, p0, Lccc71/bmw/pro/b;->c:Landroid/content/Context;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lccc71/bmw/pro/b;->b:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    :try_start_0
    iget-object v0, p0, Lccc71/bmw/pro/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lccc71/bmw/pro/b;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
