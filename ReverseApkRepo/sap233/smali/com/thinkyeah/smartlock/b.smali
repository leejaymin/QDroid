.class final Lcom/thinkyeah/smartlock/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/AboutActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/AboutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/b;->a:Lcom/thinkyeah/smartlock/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/b;->a:Lcom/thinkyeah/smartlock/AboutActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/AboutActivity;->finish()V

    return-void
.end method
