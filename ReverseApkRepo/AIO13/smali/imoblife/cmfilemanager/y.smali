.class final Limoblife/cmfilemanager/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/cmfilemanager/FileManagerActivity;


# direct methods
.method constructor <init>(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/y;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Limoblife/cmfilemanager/y;->a:Limoblife/cmfilemanager/FileManagerActivity;

    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->a(Limoblife/cmfilemanager/FileManagerActivity;Ljava/io/File;)V

    return-void
.end method
