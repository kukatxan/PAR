(define (problem cleanTask2)
 (:domain CleanerRobotTask)
   (:objects    box-1 box-2  box-3
                robot 
                ofi-1 ofi-2 ofi-3 
                ofi-4 ofi-5 ofi-6
                ofi-7 ofi-8 ofi-9)
   (:init       (robot-at ofi-4)                
                ;horizontally
                (adj ofi-1 ofi-2) (adj ofi-2 ofi-1)
                (adj ofi-2 ofi-3) (adj ofi-3 ofi-2)
                (adj ofi-4 ofi-5) (adj ofi-5 ofi-4)
                (adj ofi-5 ofi-6) (adj ofi-6 ofi-5)
                (adj ofi-7 ofi-8) (adj ofi-8 ofi-7)
                (adj ofi-8 ofi-9) (adj ofi-9 ofi-8)
                ;vertically
                (adj ofi-1 ofi-4) (adj ofi-4 ofi-1)
                (adj ofi-4 ofi-7) (adj ofi-7 ofi-4)
                (adj ofi-2 ofi-5) (adj ofi-5 ofi-2)
                (adj ofi-5 ofi-8) (adj ofi-8 ofi-5)
                (adj ofi-3 ofi-6) (adj ofi-6 ofi-3)
                (adj ofi-6 ofi-9) (adj ofi-9 ofi-6)
                
                ;All offices are dirty
                (is-dirty ofi-1) (is-dirty ofi-2) (is-dirty ofi-3)
                (is-dirty ofi-4) (is-dirty ofi-5) (is-dirty ofi-6)
                (is-dirty ofi-7) (is-dirty ofi-8) (is-dirty ofi-9)

                ;Empty offices
                (is-empty ofi-1) (is-empty ofi-2) (is-empty ofi-3)
                (box-at box-3 ofi-4) (box-at box-1 ofi-5) (box-at box-2 ofi-6)
                (is-empty ofi-7) (is-empty ofi-8) (is-empty ofi-9))
        (:goal (and (box-at box-1 ofi-6) (box-at box-2 ofi-8) (box-at box-3 ofi-4)
                (robot-at ofi-9)
                (is-clean ofi-1) (is-clean ofi-2) (is-clean ofi-3)
                (is-clean ofi-4) (is-clean ofi-5) (is-clean ofi-6)
                (is-clean ofi-7) (is-clean ofi-8) (is-clean ofi-9))))