; ModuleID = '<stdin>'
source_filename = "/tmp/tmpt77tp_fk.cpp"
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
  %vla1 = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %k.0 = phi i32 [ %k.1, %if.end ], [ 0, %entry ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond
  %cmp12 = icmp sgt i32 %k.0, 1
  br i1 %cmp12, label %for.cond11, label %for.end51

for.body:                                         ; preds = %for.cond
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(4) %vla)
  %arrayidx4 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %5 = and i32 %4, -2147483647
  %cmp5 = icmp eq i32 %5, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %idxprom8 = sext i32 %k.0 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom8
  store i32 %4, ptr %arrayidx9, align 4, !tbaa !5
  %inc = add nsw i32 %k.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %k.1 = phi i32 [ %inc, %if.then ], [ %k.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.cond11:                                       ; preds = %for.cond14, %for.cond11.preheader
  %indvars.iv33.in = phi i32 [ %k.0, %for.cond11.preheader ], [ %indvars.iv33, %for.cond14 ]
  %indvars.iv33 = add i32 %indvars.iv33.in, -1
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv33, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond11, %if.end33
  %indvars.iv29 = phi i64 [ 0, %for.cond11 ], [ %indvars.iv.next30, %if.end33 ]
  %exitcond.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv29
  %6 = load i32, ptr %arrayidx18, align 4, !tbaa !5, !invariant.load !9
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %arrayidx20 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv.next30
  %7 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  %cmp21.not = icmp slt i32 %6, %7
  br i1 %cmp21.not, label %if.end33, label %if.then22

if.then22:                                        ; preds = %for.body16
  store i32 %7, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx20, align 4, !tbaa !5
  br label %if.end33

if.end33:                                         ; preds = %if.then22, %for.body16
  br label %for.cond14

for.end51:                                        ; preds = %for.cond11.preheader
  %8 = load i32, ptr %vla1, align 16, !tbaa !5
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %8)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
