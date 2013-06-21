.class final Lcom/thinkyeah/smartlock/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/t;->a:Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/t;->a:Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->finish()V

    return-void
.end method
