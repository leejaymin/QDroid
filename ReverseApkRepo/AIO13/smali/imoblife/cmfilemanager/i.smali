.class final Limoblife/cmfilemanager/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/cmfilemanager/FileManagerActivity;


# direct methods
.method constructor <init>(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/i;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Limoblife/cmfilemanager/i;->a:Limoblife/cmfilemanager/FileManagerActivity;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Limoblife/cmfilemanager/FileManagerActivity;->a(Limoblife/cmfilemanager/FileManagerActivity;Ljava/io/File;)V

    return-void
.end method
