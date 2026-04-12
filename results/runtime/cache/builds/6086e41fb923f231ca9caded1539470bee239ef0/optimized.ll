; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3z8hrftj.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %for.inc11 ]
  %count.0 = phi i32 [ %0, %entry ], [ %count.1, %for.inc11 ]
  %cmp = icmp slt i32 %i.0, %count.0
  br i1 %cmp, label %for.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond
  %smax6 = call i32 @llvm.smax.i32(i32 %count.0, i32 noundef 0)
  %wide.trip.count7 = zext nneg i32 %smax6 to i64
  br label %for.cond14

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %smax = call i32 @llvm.smax.i32(i32 noundef %i.0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc11.loopexit, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %arrayidx8 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %cmp9 = icmp eq i32 %1, %2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp9, label %if.then, label %for.cond2, !llvm.loop !10

if.then:                                          ; preds = %for.body4
  %dec10 = add nsw i32 %count.0, -1
  br label %for.inc11

for.inc11.loopexit:                               ; preds = %for.cond2
  %3 = add nsw i32 %i.0, 1
  br label %for.inc11

for.inc11:                                        ; preds = %for.inc11.loopexit, %if.then
  %i.1 = phi i32 [ %i.0, %if.then ], [ %3, %for.inc11.loopexit ]
  %count.1 = phi i32 [ %dec10, %if.then ], [ %count.0, %for.inc11.loopexit ]
  br label %for.cond, !llvm.loop !13

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc27
  %exitcond8.not = icmp eq i64 0, %wide.trip.count7
  br i1 %exitcond8.not, label %for.end29, label %for.body16

for.body16:                                       ; preds = %for.cond14
  br i1 true, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.body16
  unreachable

if.else:                                          ; preds = %for.body16
  store i8 poison, ptr null, align 1
  br label %for.inc27

for.inc27:                                        ; preds = %if.else
  store i8 poison, ptr null, align 1
  br label %for.cond14, !llvm.loop !14

for.end29:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
