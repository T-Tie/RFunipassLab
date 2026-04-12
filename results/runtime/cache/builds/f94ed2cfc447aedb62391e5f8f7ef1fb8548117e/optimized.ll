; ModuleID = '<stdin>'
source_filename = "/tmp/tmp62dvtb_n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %5 = phi i32 [ %.pre, %if.end ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %s.0 = phi i32 [ %s.1, %if.end ], [ 0, %entry ]
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %cmp11 = icmp sgt i32 %s.0, 0
  br i1 %cmp11, label %for.cond10.preheader8, label %for.end51

for.cond10.preheader8:                            ; preds = %for.cond10.preheader
  %6 = zext nneg i32 %s.0 to i64
  br label %for.cond10

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %8 = and i32 %7, 1
  %cmp5.not = icmp eq i32 %8, 0
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %idxprom8 = sext i32 %s.0 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom8
  store i32 %7, ptr %arrayidx9, align 4, !tbaa !5
  %add = add nsw i32 %s.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %s.1 = phi i32 [ %add, %if.then ], [ %s.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond10:                                       ; preds = %for.cond10.preheader8, %for.end31
  %indvars.iv10 = phi i64 [ 0, %for.cond10.preheader8 ], [ %indvars.iv.next11, %for.end31 ]
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv10
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond10, %if.end28
  %indvars.iv12 = phi i64 [ %indvars.iv10, %for.cond10 ], [ %indvars.iv.next13, %if.end28 ]
  %cmp15 = icmp samesign ult i64 %indvars.iv12, %6
  br i1 %cmp15, label %for.body17, label %for.end31

for.body17:                                       ; preds = %for.cond14
  %9 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !9
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv12
  %10 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !9
  %cmp22 = icmp sgt i32 %9, %10
  br i1 %cmp22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %for.body17
  store i32 %10, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %9, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %for.body17
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond14

for.end31:                                        ; preds = %for.cond14
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond10

for.end51:                                        ; preds = %for.cond10.preheader
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{}
