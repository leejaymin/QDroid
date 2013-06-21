.class final Lcom/thinkyeah/smartlock/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/by;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/by;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ca;->a:Lcom/thinkyeah/smartlock/by;

    iput-object p2, p0, Lcom/thinkyeah/smartlock/ca;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ca;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
