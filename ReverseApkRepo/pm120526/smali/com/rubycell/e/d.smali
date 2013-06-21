.class final Lcom/rubycell/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rubycell/e/c;


# direct methods
.method constructor <init>(Lcom/rubycell/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/e/d;->a:Lcom/rubycell/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/rubycell/e/d;->a:Lcom/rubycell/e/c;

    iget-object v1, v1, Lcom/rubycell/e/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/rubycell/e/d;->a:Lcom/rubycell/e/c;

    iget-object v1, v1, Lcom/rubycell/e/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/rubycell/e/d;->a:Lcom/rubycell/e/c;

    iget v1, v1, Lcom/rubycell/e/c;->d:I

    invoke-static {v0, v1}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;I)V

    return-void
.end method
