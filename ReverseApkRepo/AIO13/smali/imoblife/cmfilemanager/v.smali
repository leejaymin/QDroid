.class final Limoblife/cmfilemanager/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/cmfilemanager/FileManagerActivity;


# direct methods
.method constructor <init>(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/v;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/v;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-static {v0}, Limoblife/cmfilemanager/FileManagerActivity;->c(Limoblife/cmfilemanager/FileManagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/v;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-static {v0}, Limoblife/cmfilemanager/FileManagerActivity;->e(Limoblife/cmfilemanager/FileManagerActivity;)V

    :cond_0
    return-void
.end method
