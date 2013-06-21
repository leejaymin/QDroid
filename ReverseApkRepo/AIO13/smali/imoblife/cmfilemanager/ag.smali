.class final Limoblife/cmfilemanager/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/cmfilemanager/InfoActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Limoblife/cmfilemanager/InfoActivity;I)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/ag;->a:Limoblife/cmfilemanager/InfoActivity;

    iput p2, p0, Limoblife/cmfilemanager/ag;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Limoblife/cmfilemanager/ag;->a:Limoblife/cmfilemanager/InfoActivity;

    iget v1, p0, Limoblife/cmfilemanager/ag;->b:I

    invoke-virtual {v0, v1}, Limoblife/cmfilemanager/InfoActivity;->a(I)V

    return-void
.end method
