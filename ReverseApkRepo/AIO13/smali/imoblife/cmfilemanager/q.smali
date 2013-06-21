.class final Limoblife/cmfilemanager/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/cmfilemanager/FileManagerActivity;


# direct methods
.method constructor <init>(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/q;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Limoblife/cmfilemanager/q;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-static {v0}, Limoblife/cmfilemanager/FileManagerActivity;->j(Limoblife/cmfilemanager/FileManagerActivity;)V

    iget-object v0, p0, Limoblife/cmfilemanager/q;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-virtual {v0}, Limoblife/cmfilemanager/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Limoblife/cmfilemanager/q;->a:Limoblife/cmfilemanager/FileManagerActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Limoblife/cmfilemanager/FileManagerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Limoblife/cmfilemanager/q;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-virtual {v0}, Limoblife/cmfilemanager/FileManagerActivity;->finish()V

    return-void
.end method
