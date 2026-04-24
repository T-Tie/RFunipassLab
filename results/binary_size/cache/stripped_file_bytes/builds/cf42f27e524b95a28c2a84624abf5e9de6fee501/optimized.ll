; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqgqmp_si.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@n = dso_local global i32 0, align 4
@str = dso_local global [501 x i8] zeroinitializer, align 16
@sumstr = dso_local local_unnamed_addr global [499 x i32] zeroinitializer, align 16
@flagstr = dso_local local_unnamed_addr global [499 x i32] zeroinitializer, align 16
@len = dso_local local_unnamed_addr global i32 0, align 4
@maximum = dso_local local_unnamed_addr global i32 -2147483648, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %call1 = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call2 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @str, i64 noundef 501)
  %call3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @str) #7
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr @len, align 4, !tbaa !5
  tail call void @_Z3expi(i32 noundef 0) #8
  %0 = load i32, ptr @maximum, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %call5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call4, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @_Z4pickv()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3expi(i32 noundef %a) local_unnamed_addr #4 {
entry:
  %0 = load i32, ptr @len, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  %maximum.promoted = load i32, ptr @maximum, align 4
  %2 = sext i32 %a to i64
  %sext = sext i32 %add to i64
  %cmp2.not = icmp sgt i32 %a, %sub
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end28, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end28 ], [ %2, %entry ]
  %3 = phi i32 [ %9, %for.end28 ], [ %maximum.promoted, %entry ]
  %4 = icmp eq i64 %indvars.iv, %sext
  br i1 %4, label %return, label %if.end

if.end:                                           ; preds = %tailrecurse
  %add.ptr = getelementptr inbounds i32, ptr @sumstr, i64 %indvars.iv
  br i1 %cmp2.not, label %for.end28, label %if.end.split

if.end.split:                                     ; preds = %if.end
  %cmp5.le = icmp sgt i32 %1, 0
  %add.ptr13.le = getelementptr inbounds i8, ptr @str, i64 %2
  br label %for.cond

for.cond:                                         ; preds = %if.end24, %if.end.split
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %if.end24 ], [ %2, %if.end.split ]
  %add.ptr9 = getelementptr inbounds i8, ptr @str, i64 %indvars.iv18
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond, %if.end19
  %indvars.iv12 = phi i64 [ 0, %for.cond ], [ %indvars.iv.next13, %if.end19 ]
  br i1 %cmp5.le, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr9, i64 %indvars.iv12
  %5 = load i8, ptr %add.ptr11, align 1, !tbaa !9, !invariant.load !10
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %add.ptr13.le, i64 %indvars.iv12
  %6 = load i8, ptr %add.ptr15, align 1, !tbaa !9, !invariant.load !10
  %cmp17 = icmp eq i8 %5, %6
  br i1 %cmp17, label %if.end19, label %for.end

if.end19:                                         ; preds = %for.body7
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond3

for.end:                                          ; preds = %for.cond3, %for.body7
  %indvars.iv12.lcssa = phi i64 [ 0, %for.cond3 ], [ %indvars.iv12, %for.body7 ]
  %indvars16.le = trunc i64 %indvars.iv12.lcssa to i32
  %cmp21 = icmp eq i32 %1, %indvars16.le
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.end
  %7 = load i32, ptr %add.ptr, align 4, !tbaa !5, !invariant.load !10
  %inc23 = add nsw i32 %7, 1
  store i32 %inc23, ptr %add.ptr, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.end
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1
  br label %for.cond

for.end28:                                        ; preds = %if.end
  %8 = load i32, ptr %add.ptr, align 4, !tbaa !5, !invariant.load !10
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 %3)
  store i32 %9, ptr @maximum, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %tailrecurse

return:                                           ; preds = %tailrecurse
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z4pickv() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @maximum, align 4, !tbaa !5
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %0)
  %call1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %1 = load i32, ptr @sumstr, align 16
  %.pre12 = load i32, ptr @len, align 4, !tbaa !5
  %.pre14 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = phi i32 [ %7, %if.end ], [ %.pre14, %entry ]
  %3 = phi i32 [ %8, %if.end ], [ %.pre12, %entry ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %if.end ], [ 0, %entry ]
  %cmp.not = icmp slt i32 %3, %2
  br i1 %cmp.not, label %for.end16, label %for.body

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr @maximum, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %1, %4
  br i1 %cmp2, label %for.cond3.preheader, label %if.end

for.cond3.preheader:                              ; preds = %for.body
  %add.ptr9 = getelementptr inbounds nuw i8, ptr @str, i64 %indvars.iv9
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body7
  %5 = phi i32 [ %2, %for.cond3.preheader ], [ %.pre15, %for.body7 ]
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.body7 ]
  %cmp5 = icmp sgt i32 %5, 0
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr9, i64 %indvars.iv
  %6 = load i8, ptr %add.ptr11, align 1, !tbaa !9, !invariant.load !10
  %call12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre15 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond3

for.end:                                          ; preds = %for.cond3
  %call13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %.pre = load i32, ptr @len, align 4, !tbaa !5
  %.pre13 = load i32, ptr @n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  %7 = phi i32 [ %.pre13, %for.end ], [ %2, %for.body ]
  %8 = phi i32 [ %.pre, %for.end ], [ %3, %for.body ]
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond

for.end16:                                        ; preds = %for.cond
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{}
