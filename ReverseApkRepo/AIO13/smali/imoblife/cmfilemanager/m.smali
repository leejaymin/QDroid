.class final Limoblife/cmfilemanager/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/cmfilemanager/FileManagerActivity;


# direct methods
.method constructor <init>(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/m;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Limoblife/cmfilemanager/m;->a:Limoblife/cmfilemanager/FileManagerActivity;

    iget-object v1, p0, Limoblife/cmfilemanager/m;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-static {v1}, Limoblife/cmfilemanager/FileManagerActivity;->i(Limoblife/cmfilemanager/FileManagerActivity;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->b(Limoblife/cmfilemanager/FileManagerActivity;Ljava/io/File;)V

    return-void
.end method
