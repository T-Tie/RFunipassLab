; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_0i0bqcz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@s = dso_local global [110 x i8] zeroinitializer, align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7operatev() local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @s) #6
  %conv = trunc i64 %call to i32
  %0 = and i64 %call, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc11 ], [ %0, %entry ]
  %pre.0 = phi i32 [ %pre.1, %for.inc11 ], [ %conv, %entry ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars = trunc i64 %indvars.iv.next to i32
  %1 = trunc nuw i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %pre.0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond14

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds nuw [110 x i8], ptr @s, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %cmp2 = icmp eq i8 %2, 32
  br i1 %cmp2, label %for.cond3, label %for.inc11

for.cond3:                                        ; preds = %for.body, %for.inc
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc ], [ %indvars.iv, %for.body ]
  %3 = trunc nuw i64 %indvars.iv1 to i32
  %cmp4 = icmp sgt i32 %pre.0, %3
  br i1 %cmp4, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond3
  %arrayidx8 = getelementptr inbounds nuw [110 x i8], ptr @s, i64 0, i64 %indvars.iv1
  %4 = load i8, ptr %arrayidx8, align 1, !tbaa !5, !invariant.load !8
  %call9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %4)
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  %call10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body, %for.end
  %pre.1 = phi i32 [ %indvars, %for.end ], [ %pre.0, %for.body ]
  br label %for.cond, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc21
  %indvars.iv5 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next6, %for.inc21 ]
  %exitcond.not = icmp eq i64 %indvars.iv5, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.inc21

for.inc21:                                        ; preds = %for.cond14
  %arrayidx19 = getelementptr inbounds nuw [110 x i8], ptr @s, i64 0, i64 %indvars.iv5
  %5 = load i8, ptr %arrayidx19, align 1, !tbaa !5, !invariant.load !8
  %call20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %5)
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond14, !llvm.loop !13

for.end23:                                        ; preds = %for.cond14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @s, i64 noundef 110)
  tail call void @_Z7operatev()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nosync nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
