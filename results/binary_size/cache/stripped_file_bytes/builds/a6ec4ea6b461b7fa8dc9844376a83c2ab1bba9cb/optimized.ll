; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgub9m9w1.cpp"
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
  %yw = alloca [150 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 150, ptr noundef nonnull align 16 %yw) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(150) %yw, i8 noundef 0, i64 noundef 150, i1 noundef false) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 %yw, i64 noundef 100, i8 noundef signext 10)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %yw) #9
  %conv = trunc i64 %call2 to i32
  %sub = add nsw i32 %conv, -1
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ %conv, %entry ], [ %dec, %for.inc25 ]
  %s.0 = phi i32 [ %sub, %entry ], [ %s.1, %for.inc25 ]
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %0 = zext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds nuw [150 x i8], ptr %yw, i64 0, i64 %0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %cmp4 = icmp eq i8 %1, 32
  br i1 %cmp4, label %for.cond5, label %if.end

for.cond5:                                        ; preds = %for.body, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %0, %for.body ]
  %2 = trunc nuw i64 %indvars.iv to i32
  %cmp6.not.not = icmp sgt i32 %s.0, %2
  br i1 %cmp6.not.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx9 = getelementptr inbounds nuw [150 x i8], ptr %yw, i64 0, i64 %indvars.iv.next
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !5, !invariant.load !8
  %call10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %3)
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  %sub12 = add nsw i32 %i.0, -1
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  %s.1 = phi i32 [ %sub12, %for.end ], [ %s.0, %for.body ]
  %cmp13 = icmp eq i32 %i.0, 0
  br i1 %cmp13, label %for.cond15.preheader, label %for.inc25

for.cond15.preheader:                             ; preds = %if.end
  %smax = call i32 @llvm.smax.i32(i32 %s.1, i32 noundef -1)
  %4 = add nsw i32 %smax, 1
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc21
  %indvars.iv4 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next5, %for.inc21 ]
  %exitcond = icmp eq i64 %indvars.iv4, %wide.trip.count
  br i1 %exitcond, label %for.inc25, label %for.inc21

for.inc21:                                        ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw [150 x i8], ptr %yw, i64 0, i64 %indvars.iv4
  %5 = load i8, ptr %arrayidx19, align 1, !tbaa !5, !invariant.load !8
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %5)
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond15, !llvm.loop !12

for.inc25:                                        ; preds = %for.cond15, %if.end
  %dec = add nsw i32 %i.0, -1
  br label %for.cond, !llvm.loop !13

for.end26:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 150, ptr noundef nonnull %yw) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
