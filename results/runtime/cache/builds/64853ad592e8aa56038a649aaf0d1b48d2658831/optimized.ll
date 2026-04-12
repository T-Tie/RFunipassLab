; ModuleID = '<stdin>'
source_filename = "/tmp/tmpd4onlew2.cpp"
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
  %str = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %str) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 %str, i64 noundef 100)
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str)
  %0 = trunc i64 %strlen to i32
  %add = add nuw nsw i32 %0, 1
  %1 = and i64 %strlen, 4294967295
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc20, %entry
  %indvars.iv = phi i64 [ %2, %for.inc20 ], [ %1, %entry ]
  %a.0 = phi i32 [ %a.1, %for.inc20 ], [ %add, %entry ]
  %2 = add nsw i64 %indvars.iv, -1
  %3 = trunc nuw i64 %indvars.iv to i32
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %for.body3, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond1
  %4 = call i32 @llvm.smax.i32(i32 %a.0, i32 noundef 1)
  %smax = add nsw i32 %4, -1
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond22

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %2
  %5 = load i8, ptr %arrayidx5, align 1, !tbaa !5
  %cmp7 = icmp eq i8 %5, 32
  br i1 %cmp7, label %if.then, label %for.inc20

if.then:                                          ; preds = %for.body3
  %sub8 = add nsw i32 %a.0, -1
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc16, %if.then
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc16 ], [ %indvars.iv, %if.then ]
  %6 = trunc nuw i64 %indvars.iv15 to i32
  %cmp11 = icmp sgt i32 %sub8, %6
  br i1 %cmp11, label %for.inc16, label %for.end18

for.inc16:                                        ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv15
  %7 = load i8, ptr %arrayidx14, align 1, !tbaa !5
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond10, !llvm.loop !8

for.end18:                                        ; preds = %for.cond10
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body3, %for.end18
  %a.1 = phi i32 [ %3, %for.end18 ], [ %a.0, %for.body3 ]
  br label %for.cond1, !llvm.loop !11

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc29
  %indvars.iv20 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next21, %for.inc29 ]
  %exitcond.not = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond.not, label %for.end31, label %for.inc29

for.inc29:                                        ; preds = %for.cond22
  %arrayidx27 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv20
  %8 = load i8, ptr %arrayidx27, align 1, !tbaa !5
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %8)
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond22, !llvm.loop !12

for.end31:                                        ; preds = %for.cond22
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %str) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
