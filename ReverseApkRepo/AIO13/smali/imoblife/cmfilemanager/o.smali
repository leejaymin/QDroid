.class final Limoblife/cmfilemanager/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/cmfilemanager/FileManagerActivity;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Limoblife/cmfilemanager/FileManagerActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/o;->a:Limoblife/cmfilemanager/FileManagerActivity;

    iput-object p2, p0, Limoblife/cmfilemanager/o;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Limoblife/cmfilemanager/o;->a:Limoblife/cmfilemanager/FileManagerActivity;

    iget-object v1, p0, Limoblife/cmfilemanager/o;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-static {v1}, Limoblife/cmfilemanager/FileManagerActivity;->i(Limoblife/cmfilemanager/FileManagerActivity;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Limoblife/cmfilemanager/o;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Limoblife/cmfilemanager/FileManagerActivity;->a(Limoblife/cmfilemanager/FileManagerActivity;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
